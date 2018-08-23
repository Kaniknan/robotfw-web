*** Settings ***
Library  Selenium2Library
Test Teardown  close all browsers

*** Test Cases ***
Test case upload file
    open browser  file:///D:/Training/ii/robotfw-web/lectures/upload_file/test.html  chrome
    sleep  5s
    choose file  id=file_upload  D:/Training/ii/robotfw-web/lectures/upload_file/test.html
    sleep  5s