*** Settings ***
Resource     ../../resources/DataManager.robot

*** Test Cases ***
TC001 Crate Lead
    Open Test Data  data.xlsx
    Read Test Data
    Log Data Record C

TC002 Crate Lead
    Open Test Data  data.xlsx
    Read Test Data
    Log Data Record C


*** Keywords ***
Log Data Record C
    ${data}=  get data from column  Data Record C
