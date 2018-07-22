*** Settings ***
Library  Selenium2Library
Library  ../../../libraries/customlib.py

*** Variables ***
${ENVIRONMENT} =  dev
${BROWSER} =  ie
${URL} =  http://www.google.co.th
#&{URL} =  dev=http://dev.google.co.th  sit=http://sit.google.co.th  prod=http://prod.google.co.th

*** Test Cases ***
Test Case 01
    Open Web Application
    Do Something
    Close Application

*** Keywords ***
Open Web Application
    open browser  ${URL}  ${BROWSER}
    sleep  5s

Do Something
    Log  do somethin here!!!

Close Application
    kill all ie browsers