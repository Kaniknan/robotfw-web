*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Frame Test Case
    open browser  https://test.salesforce.com/  chrome
    wait until page contains element  id=username
    input text  id=username  itsara@tmbbank.com.automate
    input text  id=password  P@ssw0rd
    click element  id=Login
    click element  xpath=//input[@value='New Task']