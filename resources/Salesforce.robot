*** Settings ***
Resource        ../resources/PO/Login.robot
Resource        ../resources/PO/Home.robot
Resource        ../resources/PO/Leads.robot

*** Keywords ***
Navigate to Salesfore Login Page
    go to  ${URL}
    Login Page Should Be Opened

Attemp to Login
    [Arguments]  ${username}  ${password}
    Enter Credentials  ${username}  ${password}
    Click Submit
    Verify That Home Tab is Selected

Create Leads
    Select Tab  menu=Leads
    Click New Leads
    Verify That Leads Tab is Selected
    Click Cancel Button