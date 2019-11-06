# aws-lambda-ci-python

[![Build Status](https://travis-ci.com/anothergitdev/aws-lambda-ci-python.svg?branch=master)](https://travis-ci.com/anothergitdev/aws-lambda-ci-python)
![GitHub top language](https://img.shields.io/github/languages/top/dheerusuthar/aws-lambda-ci-python)
![GitHub](https://img.shields.io/github/license/dheerusuthar/aws-lambda-ci-python)
![GitHub last commit](https://img.shields.io/github/last-commit/dheerusuthar/aws-lambda-ci-python)

AWS Lambda CI/CD Template.

## Setting Up Project

Clone this repository and add your lambda function packages in `lambda-functions` directory. there's sample `function-1` for reference with sample unit tests.
Use same diretory structure for your lambda function handler and tests.


## Usage example

    - Use this aws lambda template for python to develop manage and automatically build your code fro specific lambda fnctions package to deploy in your environment.

    - Use `build.sh` script for testing deploying sample lambda functions.
    
    - `/src` directory on root will be created after successful run with deployement packages for each lambdas.


## Development setup for CI/CD

Setup CI/CD ( jenkins, Travis, CircleCi etc ) repo and set build script to `build.sh` from root directory to automate the build processes. you can change your deployment package directory from `src` to your suitable dir.

## Meta

Your Name – [@Twitter](https://twitter.com/AnotherMarwari) – dheerusuthar@gmail.com

Distributed under the GNU license. See ``LICENSE`` for more information.

[https://github.com/dheerusuthar/aws-lambda-ci-python](https://github.com/dheerusuthar/)

## Contributing

1. Fork it (<https://github.com/dheerusuthar/aws-lambda-ci-python/fork>)
2. Create your feature branch (`git checkout -b feature/feature001`)
3. Commit your changes (`git commit -am 'Add some feature001'`)
4. Push to the branch (`git push origin feature/feature001`)
5. Create a new Pull Request
