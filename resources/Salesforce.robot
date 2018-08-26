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
    Verify That Leads Tab is Selected
    Click New Leads
    Select Lead Record Type  type=Commercial Lead
    Click Continue Button
    Select Customer Type  type=Individual
    Enter Customer Name  customer_name=Test01
    Enter Contact Last Name  last_name=Last name
    Click Save Button
    Click Pre Screen Button
    Select Pre Screen Result  result=Passed
    Click Save Button
    Click New Recommended Product Button
    Select Opportunity Type  type=Non-Credit
    Click Product Lookup Button
    Select Product From Search Product Window  product=A&H


