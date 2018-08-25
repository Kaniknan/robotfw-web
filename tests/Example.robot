*** Settings ***
Library  Selenium2Library  timeout=20
Library  String
Test Teardown    Close All Browsers

*** Variables ***
${BROWSER}  ie
${URL}  https://test.salesforce.com/

*** Test Cases ***
First Test Case
    open browser  ${URL}  ${BROWSER}
    maximize browser window
    wait until page contains element  id=username
    title should be  Login | Salesforce
    input text  id=username  itsara@tmbbank.com.automate
    input text  id=password  P@ssw0rd
    click element  id=Login
    wait until page contains element  id=phSearchInput
    select frame  xpath=//iframe[@title='TaskEventHomeComponent']
    wait until page contains element  xpath=//input[@value='New Task']
    unselect frame
    input text  id=phSearchInput  Titiya Uttsoponwatna
    wait until page contains element  id=phSearchButton
    click element  id=phSearchButton
    wait until page contains element  xpath=//a[contains(text(),'Titiya Uttsoponwatna')]  timeout=20s
    click element  xpath=//a[contains(text(),'Titiya Uttsoponwatna')]
    wait until element is enabled  id=moderatorMutton
    click element  id=moderatorMutton
    wait until element is visible  id=USER_DETAIL
    click element  id=USER_DETAIL
    wait until page contains element  name=login
    click element  name=login
    wait until page contains element  xpath=//a[contains(.,'Leads')]
    click element  xpath=//a[contains(.,'Leads')]
    wait until page contains element  name=new
    click element  name=new
    wait until page contains element  xpath=//input[@title='Continue']
    click element  xpath=//input[@title='Continue']
    wait until page contains element  id=j_id0:theForm:j_id8:theSection11:j_id38
    select from list by label  id=j_id0:theForm:j_id8:theSection11:j_id38  Individual
    wait until page contains element  xpath=//input[@id='j_id0:theForm:j_id8:theSection11:j_id40']
    input text  xpath=//input[@id='j_id0:theForm:j_id8:theSection11:j_id40']  Lead Test
    input text  id=j_id0:theForm:j_id8:theSection11:j_id42  Lead Test
    select from list by label  id=j_id0:theForm:j_id8:theSection11:j_id44  Work permit ID
    ${randomid}=  Generate Random String  12
    input text  id=j_id0:theForm:j_id8:theSection11:j_id46  ${randomid}
    input text  id=j_id0:theForm:j_id8:theSection11:j_id51  0897774445
    input text  id=j_id0:theForm:j_id8:theSection13:j_id70:j_id74  Lead
    input text  id=j_id0:theForm:j_id8:theSection13:j_id76:j_id79  Test
    click element  xpath=//input[@value='Save']
    wait until page contains element  name=pre_screen
    click element  name=pre_screen
    wait until page contains element  id=j_id0:theBlock:theBlock:PreScreenBlock:j_id42:j_id45
    select from list by label  id=j_id0:theBlock:theBlock:PreScreenBlock:j_id42:j_id45  Passed
    wait until page contains element  xpath=//input[@value='Save']
    click element  xpath=//input[@value='Save']
    wait until page contains element  xpath=//input[@value='New Recommended Product']
    click element  xpath=//input[@value='New Recommended Product']
    wait until page contains element   xpath=//img[contains(@title,'Product Lookup (New Window)')]
    click element  xpath=//img[contains(@title,'Product Lookup (New Window)')]
    sleep  3s
    select window  NEW
    select frame  id=resultsFrame
    wait until page contains element  xpath=//a[contains(text(),'ACCOUNT TRANSFER')]
    click element  xpath=//a[contains(text(),'ACCOUNT TRANSFER')]
    sleep  5s
