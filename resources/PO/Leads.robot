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

Select Lead Record Type
    [Arguments]  ${type}
    wait until page contains element   id=p3
    select from list by label   id=p3   ${type}

Enter Contact Last Name
    [Arguments]  ${last_name}
    wait until page contains element  xpath=/descendant::tr[th[label[contains(., 'Last Name')]]][1]//input[@tabindex='190']
    input text  xpath=/descendant::tr[th[label[contains(., 'Last Name')]]][1]//input[@tabindex='190']  ${last_name}

Click Save Button
    wait until page contains element  xpath=/descendant::input[@value='Save'][1]
    click element  xpath=/descendant::input[@value='Save'][1]

Click Pre Screen Button
    wait until page contains element  xpath=/descendant::input[@value='Pre-Screen'][1]
    click element  xpath=/descendant::input[@value='Pre-Screen'][1]
Select Pre Screen Result
    [Arguments]  ${result}
     wait until page contains element  xpath=//tr[th[label[contains(.,'Pre-Screening Result')]]]//select
     Select from list by label  xpath=//tr[th[label[contains(.,'Pre-Screening Result')]]]//select  ${result}

Click New Recommended Product Button
    wait until page contains element  xpath=//input[@title='New Recommended Product']
    click element  xpath=//input[@title='New Recommended Product']

Select Opportunity Type
    [Arguments]  ${type}
    wait until page contains element  xpath=//tr[td[label[contains(.,'Opportunity Type')]]]//select
    select from list by label  xpath=//tr[td[label[contains(.,'Opportunity Type')]]]//select   ${type}

Click Product Lookup Button
    wait until page contains element  xpath=//img[@title='Product Lookup (New Window)']
    click element  xpath=//img[@title='Product Lookup (New Window)']

Select Product From Search Product Window
    [Arguments]  ${product}
    select window  locator=new
    wait until page contains element  id=resultsFrame
    select frame  id=resultsFrame
    wait until page contains element  xpath=//a[contains(.,'${product}')]
    click element  xpath=//a[contains(.,'${product}')]
