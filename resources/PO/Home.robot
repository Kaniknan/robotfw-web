*** Settings ***
Library  Selenium2Library


*** Keywords ***
Verify That Home Tab is Selected
    wait until page contains element  //a[@title='Home Tab - Selected']  timeout=10s

Select Tab
    [Arguments]  ${menu}
    click element  xpath=//a[contains(.,'${menu}')]