*** Settings ***
Library  Selenium2Library  timeout=15s

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    sleep  3s
    Close All Browsers


