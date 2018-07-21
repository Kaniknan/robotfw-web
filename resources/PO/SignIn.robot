*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGN_IN_EMAIL} =          id=txt-username
${SIGN_IN_PASSWORD} =       id=txt-password
${LOGIN_SUBMIT_BUTTON} =    id=btn-login
${LOGIN_URL} =  profile.php#login

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL}  ${LOGIN_URL}
    go to  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Username}  ${Password}
    input text  ${SIGN_IN_EMAIL}  ${Username}
    input text  ${SIGN_IN_PASSWORD}  ${Password}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}
