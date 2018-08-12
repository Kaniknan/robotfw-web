*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify That Leads Tab is Selected
    wait until page contains element  //a[@title='Leads Tab - Selected']

Click New Leads
    click element  name=new

Click Cancel Button
    click element  name=cancel