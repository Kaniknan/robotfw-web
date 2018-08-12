*** Settings ***
Documentation  Demo App
Resource  ../../resources/Common.robot
Resource  ../../resources/DemoApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/mutiple_testcases.robot

*** Variables ***
${BROWSER} =  ie
${BASE_URL} =  http://localhost:7272/


*** Test Cases ***

Login with invalid password should show correct error message
    DemoApp.Navigate to Sign In Page
    DemoApp.Attempt Login  demo  InvalidPassword
    DemoApp.Verify Login Page Error Message  Login failed. Invalid user name and/or password.

Login with blank email and password should show correct error message
    DemoApp.Navigate to Sign In Page
    DemoApp.Attempt Login  ${EMPTY}  ${EMPTY}
    DemoApp.Verify Login Page Error Message  Login failed. Invalid user name and/or password.
