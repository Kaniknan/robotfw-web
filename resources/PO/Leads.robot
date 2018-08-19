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
    wait until page contains element  xpath=//input[@id='j_id0:theForm:j_id8:theSection11:j_id40']
    input text  xpath=//input[@id='j_id0:theForm:j_id8:theSection11:j_id40']  ${customer_name}

Click Lookpup Primary Campaign
    click element  xpath=//img[contains(@title,'Primary Campaign Lookup (New Window)')]