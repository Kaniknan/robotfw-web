*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify That Leads Tab is Selected
    wait until page contains element  //a[@title='Leads Tab - Selected']

Click New Leads
    click element  name=new

Click Continue Button
    click element  xpath=//input[@title='Continue']

Click Cancel Button
    click element  name=cancel

Enter Customer Name
    [Arguments]  ${customer_name}
    wait until page contains element  xpath=//tr[th[label[text()='Customer Name']]]//input
    input text  xpath=//tr[th[label[text()='Customer Name']]]//input  ${customer_name}

Select Customer Type
    [Arguments]  ${type}
    wait until page contains element  xpath=//tr[th[label[contains(.,'Customer Type')]]]//select
    select from list by label  xpath=//tr[th[label[contains(.,'Customer Type')]]]//select  ${type}


