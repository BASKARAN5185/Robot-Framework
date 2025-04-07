Robot Framework Web Testing Project :

Project Description:

This repository is a learning project dedicated to web UI testing using Robot Framework and the SeleniumLibrary. The goal of this project is to automate the testing of web applications through browser interaction and validation. It demonstrates how to write and execute test cases for web applications using Robot Framework, while also integrating the tests with GitHub Actions for continuous integration (CI).

Project Features
Web UI Testing: Automated testing for web applications using the SeleniumLibrary. This includes basic browser actions like clicking buttons, filling out forms, validating page elements, and more.

Test Scenarios: A collection of test cases demonstrating common web UI testing tasks, such as form validation, navigation, and interaction with dynamic content.

GitHub Actions Integration: Automated execution of tests using GitHub Actions whenever changes are pushed to the repository, ensuring that web UI tests are continuously executed on each update.

Reports and Logs: Robot Framework generates detailed HTML reports and logs of test execution for analyzing results and debugging issues.

Learning Resources: A set of documentation and guides explaining the use of Robot Framework, SeleniumLibrary, and best practices for web UI automation.

Project Setup
Clone the Repository

First, clone the repository to your local machine:

bash
Copy
git clone https://github.com/yourusername/robot-framework-web-testing.git
cd robot-framework-web-testing
Install Dependencies

Install Robot Framework, SeleniumLibrary, and other necessary dependencies:

bash
Copy
pip install -r requirements.txt
The requirements.txt file should include:

txt
Copy
robotframework==4.0.3
robotframework-seleniumlibrary==5.1.0
Running Tests

To run all the tests, use the following command:

bash
Copy
robot tests/
This will run all the test cases located in the tests/ directory.

GitHub Actions

This project is configured with GitHub Actions to automatically run the tests on every push to the repository. You can view the results in the Actions tab.

Folder Structure
bash
Copy
/robot-framework-web-testing
    ├── /tests                    # Test cases for web UI testing
    │    ├── login_tests.robot     # Login functionality tests
    │    └── form_validation.robot # Form validation tests
    ├── /resources                # External resources like test data (e.g., user credentials)
    ├── /reports                  # Test execution reports (generated after test runs)
    ├── requirements.txt          # Python dependencies for Robot Framework & SeleniumLibrary
    ├── robot_tests.yml           # GitHub Actions CI pipeline file
    └── README.md                 # Project documentation
Sample Test Case
Here’s a simple example of a Robot Framework test case using SeleniumLibrary to perform a basic login test:

robot
Copy
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://example.com/login
${BROWSER}  Chrome
${USERNAME} testuser
${PASSWORD} password123

*** Test Cases ***
Login Page Should Load
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Login - Example
    Page Should Contain Element    id=login-form
    Close Browser

Valid Login Should Redirect To Dashboard
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=login-button
    Wait Until Page Contains    Dashboard
    Title Should Be    Dashboard - Example
    Close Browser
GitHub Actions Workflow Example
The robot_tests.yml file configures GitHub Actions to run the tests automatically when you push to the main branch:

yaml
Copy
name: Web UI Tests with Robot Framework

on:
  push:
    branches:
      - main  # Trigger the action on push to the main branch
  pull_request:
    branches:
      - main  # Trigger the action on pull request targeting the main branch

jobs:
  test:
    runs-on: ubuntu-latest  # Use the latest Ubuntu runner

    steps:
      - name: Checkout code
        uses: actions/checkout@v2  # Checkout the repository code

      - name: Set up Python
        uses: actions/setup-python@v2  # Set up Python environment
        with:
          python-version: '3.9'

      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt

      - name: Run Robot Framework Tests
        run: |
          robot tests/

      - name: Upload test results
        uses: actions/upload-artifact@v2
        with:
          name: test-results
          path: reports/
This workflow automatically installs dependencies, runs the tests, and uploads the results as artifacts after every push to the main branch.

Learning Resources
To learn more about Robot Framework and SeleniumLibrary for web UI testing, here are some useful resources:

Robot Framework Documentation: https://robotframework.org/

SeleniumLibrary User Guide: https://robotframework.org/SeleniumLibrary/

Robot Framework Web Testing Guide: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#selenium-library

Contributing
If you'd like to contribute to this project, feel free to fork the repository, make your changes, and create a pull request. Contributions are always welcome!

Conclusion
This project is focused on web UI testing using Robot Framework and SeleniumLibrary. It provides examples of test cases for browser automation, integration with GitHub Actions for continuous integration, and useful resources for learning Robot Framework.

By using this setup, you can practice writing automated tests for web applications and ensure your tests are executed automatically with every change.
