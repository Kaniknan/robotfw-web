*** Settings ***
Library  Selenium2Library

*** Variables ***
${ENVIRONMENT = dev
${BROWSER} =  chrome
#${URL} =  http://dev.google.co.th
&{URL} =  dev=http://dev.google.co.th  sit=http://sit.google.co.th  prod=http://prod.google.co.th

*** Test Cases ***
Open Web Application
    open browser  ${URL.${ENVIRONMENT}}  ${BROWSER}
    sleep  5s
    close browser