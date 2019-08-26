#!/bin/bash
echo ================================== Start Build ==============================================

set -e
set -x

PATH=$WORKSPACE/venv/bin:/usr/local/bin:$PATH
if [ ! -d "venv" ]; then
        virtualenv --python=/usr/bin/python3.6 venv
fi

. venv/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

rm -rf coverage pylint.log python_tests_xml src

python -m coverage run test_run.py

python -m coverage xml -o coverage.xml
python -m coverage html -d coverage


pylint --disable=C0303,C0301,W0603,C0103,C0111 lambdas > pylint.log || true


python test_run.py

mkdir src; curr_dir=$(pwd);
cd lambdas;

for i in ./*; do echo "[Compressing Package] -> ${d}"; cd "${i}";  zip -r "${curr_dir}/src/${i%}.zip" . *; cd ..; done

cd ..

echo ================================== End Build ===============================================
