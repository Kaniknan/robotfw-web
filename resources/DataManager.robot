*** Settings ***
Documentation  Get data from excel
Library         ../customlibs/excelcustomlibrary.py
Library           OperatingSystem
Library           String

*** Keywords ***
Open Test Data
    [Arguments]  ${filename}
    ${filelocation}=	Join Path	${CURDIR}	..	data	${filename}
    open excel file  ${filelocation}
    select sheet  ${SUITE NAME}

Read Test Data
    ${search}=	Get Substring	${TEST NAME}	0	5
    ${row}=	 Search Row By Value	Test Case	${search}
    Should Not Be Equal As Integers	${row}	0	Cannot find the data row in Excel data file
    Set Working Row	${row}