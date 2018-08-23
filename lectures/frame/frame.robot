*** Settings ***
Library  Selenium2Library
Test Teardown  close all browsers

*** Test Cases ***
Test case select frame
    open browser  https://test.salesforce.com/  ie
    select frame  name=marketing
    wait until page contains  Make your digital transformation dreams a reality.  timeout=10s
    unselect frame
    input text  id=username  testusername
