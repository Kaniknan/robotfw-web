*** Settings ***
Library  Selenium2Library

*** Variables ***
${TXT_USERNAME}  id=username
${TXT_PASSWORD}  id=password
${BTN_LOGIN}    id=Login


*** Keywords ***
Login Page Should Be Opened
    wait until page contains element  ${BTN_LOGIN}
    title should be  Login | Salesforce

Enter Credentials
    [Arguments]  ${username}  ${password}
    input text  ${TXT_USERNAME}  ${username}
    input text  ${TXT_PASSWORD}  ${password}

Click Submit
    click element  ${BTN_LOGIN}
