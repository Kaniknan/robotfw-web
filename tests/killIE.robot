*** Settings ***
Library  Selenium2Library  timeout=10
Library  ../customlibs/csv.py
Test Teardown    Close All Browsers

*** Test Cases ***
001
    Log  aaaa