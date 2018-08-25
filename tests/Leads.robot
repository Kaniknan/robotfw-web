*** Settings ***
Documentation  Salesforce web
Resource        ../resources/Common.robot
Resource        ../resources/Salesforce.robot
Test Setup     Common.Begin web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER}  ie
${URL}  https://test.salesforce.com/

*** Test Cases ***
TC001 Creaet Lead
    Navigate to Salesfore Login Page
    Attemp to Login  username=itsara@tmbbank.com.automate  password=P@ssw0rd
    Create Leads