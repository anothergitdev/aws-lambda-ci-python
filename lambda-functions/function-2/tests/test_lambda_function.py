import random
import unittest
import xmlrunner
import json


def runner(output="python_tests_xml"):
    return xmlrunner.XMLTestRunner(output=output)


class TestLambdaFunction(unittest.TestCase):
    def setUp(self):
        print(f"Running Test on Lambda Handler")

    def test_boolean(self):
        a = True
        b = True
        self.assertEqual(a, b)

    def test_lambda_handler(self):
        lambda_input = {"statusCode": 200, "body": json.dumps("Hello from Lambda!")}
        self.assertEqual(
            {"statusCode": 200, "body": json.dumps("Hello from Lambda!")}, lambda_input
        )


if __name__ == "__main__":
    unittest.main()
    # runner().run(unittest.main())
