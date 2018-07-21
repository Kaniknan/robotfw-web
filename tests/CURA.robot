*** Settings ***
Documentation  Demo CURA Healthcare Service Website
Resource  ../resources/Common.robot
Resource  ../resources/CURAApp.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results tests/CURA.robot

*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =  http://demoaut.katalon.com


*** Test Cases ***

Login with invalid password should show correct error message
    CURAAPP.Navigate to Sign In Page
    CURAAPP.Attempt Login  John Doe  InvalidPassword
    CURAAPP.Verify Login Page Error Message  Login failed! Please ensure the username and password are valid.

Login with blank email and password should show correct error message
    CURAApp.Navigate to Sign In Page
    CURAApp.Attempt Login  ${EMPTY}  ${EMPTY}
    CURAApp.Verify Login Page Error Message  Login failed! Please ensure the username and password are valid.

TEST PRINT
    LOG  ${SIGN_IN_EMAIL}