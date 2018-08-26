*** Settings ***
Library  Selenium2Library  timeout=20
Test Teardown    Close All Browsers

*** Variables ***
${BROWSER}  ie
${URL}  https://test.salesforce.com/

*** Test Cases ***
Upload File 001
    open browser  ${URL}  ${BROWSER}
    maximize browser window
    wait until page contains element  id=username
    title should be  Login | Salesforce
    input text  id=username  itsara@tmbbank.com.automate
    input text  id=password  P@ssw0rd
    click element  id=Login
    wait until page contains element  id=phSearchInput
    select frame  xpath=//iframe[@title='TaskEventHomeComponent']
    sleep  5s
    wait until page contains element  xpath=//input[@value='New Task']
    click element  xpath=//input[@value='New Task']
    unselect frame
    wait until page contains element  xpath=//a[@title='Upload Lead Tab']
    click element  xpath=//a[@title='Upload Lead Tab']
    wait until page contains element  xpath=//a[@title='Upload Lead Tab - Selected']
    choose file  id=j_id0:frm:csvFile  D:\\Training\\ii\\Import Lead 20 records.csv
    wait until page contains element  id=j_id0:frm:importCSVbtn
    click element  id=j_id0:frm:importCSVbtn
    wait until page contains element  id=j_id0:frm:j_id40:leadTable
    ${count}=  get matching xpath count  //table[@id='j_id0:frm:j_id40:leadTable']/tbody/tr
    should be equal  21  ${count}


