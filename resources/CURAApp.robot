*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Enter Credentials  ${Username}  ${Password}
    SignIn.Click Submit
    Sleep  1s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}