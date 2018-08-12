*** Settings ***
Documentation  Get data from external files
Library  ../customlibs/csv.py

*** Keywords ***
Get CSV Data
    [Arguments]  ${filepath}
    ${data}=  read csv files  ${filepath}
    [Return]  ${data}