*** Settings ***
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
TC-001: Testing open new window.
    [Tags]  tc001
    click button  id=btn_open

TC-002: Testing upload file.
    [Tags]  tc002
    click button  id=file_upload

TC-003: Testing alert popup.
    [Tags]  tc003
    click button  id=btn_popup

*** Keywords ***
