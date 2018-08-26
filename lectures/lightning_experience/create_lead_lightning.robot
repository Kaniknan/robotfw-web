*** Setting ***
Suite Teardown    Close Browser
Library           Selenium2Library     timeout=10s

*** Variables ***
${URL}            https://test.salesforce.com
${USERNAME}       itsara@tmbbank.com.automate
${PASSWORD}       P@ssw0rd
${CUSTOMER_TYPE}    Juristic
${CUSTOMER_NAME}    CustomerName-01
${CUSTOMER_LASTNAME}    LastName-01
${BROWSER}  chrome

*** Test Cases ***
TC01: Create Lead On The Lightning Experience
    Login Salesforce Web
    Verify Home Page
    Switch To Lightning Page
    Verify Home Page
    Add New Lead
    Delete New Lead

*** Keywords ***
Login Salesforce Web
    Open Browser    ${URL}    browser=${BROWSER}
    Input Text    id=username    ${USERNAME}
    Input Password    id=password    ${PASSWORD}
    Click Button    id=Login

Verify Home Page
    Wait Until Page Contains    Home

Switch To Lightning Page
    ${count}=    Get Matching XPath Count    xpath=//a[@class='switch-to-lightning']
    Run Keyword If    ${count} > 0    Click Element    xpath=//a[@class='switch-to-lightning']
    #And    Page Should Not Contain    Switch to Lightning Experience

Add New Lead
    Click Leads Tab
    Click New Button
    Select Record Type
    Enter Lead Information (Require Field)
    Verify New Lead

Click Leads Tab
    Wait Until Element Is Enabled    xpath=//a[@title='Leads']
    Click Link    xpath=//a[@title='Leads']

Click New Button
    Wait Until Element Is Enabled    xpath=//a[@title='New']
    Click Link    xpath=//a[@title='New']

Select Record Type
    Wait Until Element Is Enabled    xpath=//div[span[text()='Commercial Completed']]
    Click Element    xpath=//div[span[text()='Commercial Completed']]
    Click Button    xpath=//button[span[text()='Next']]

Enter Lead Information (Require Field)
    Wait Until Keyword Succeeds    10s    1s    Select Frame    xpath=//iframe[contains(@id,'vfFrameId')]
    Wait Until Element Is Enabled    xpath=//div[label[text()='Customer Type']]//select
    Select From List By Label    xpath=//div[label[text()='Customer Type']]//select    ${CUSTOMER_TYPE}
    Input Text    xpath=//div[label[text()='Customer Name']]//input    ${CUSTOMER_NAME}
    Input Text    xpath=//div[label[text()='Last Name']]//input    ${CUSTOMER_LASTNAME}
    Click Element    xpath=//input[@value='Save']
    Unselect Frame

Verify New Lead
    Wait Until Page Contains    ${CUSTOMER_NAME}
    Wait Until Page Contains    ${CUSTOMER_LASTNAME}

Delete New Lead
    Click Delete Button
    Confirm Delete Dialog
    Verify Delete Lead

Click Delete Button
    Wait Until Element Is Enabled    xpath=//a[@title='Delete']
    Click Link    xpath=//a[@title='Delete']

Confirm Delete Dialog
    Wait Until Page Contains    Are you sure you want to delete this Lead?
    Wait Until Element Is Enabled    xpath=//button[span[text()='Delete']]
    Click Button    xpath=//button[span[text()='Delete']]

Verify Delete Lead
    Wait Until Page Contains    Lead "${CUSTOMER_LASTNAME}" was deleted.
    Wait Until Page Does Not Contain    Lead "${CUSTOMER_LASTNAME}" was deleted.
