*** Settings ***
Library           Collections
Library           RequestsLibrary

*** Test Cases ***
RequestLib
    Create Session    github    https://api.github.com
    Create Session    google    http://www.google.com
    ${resp}=    Get Request    google    /
    Should Be Equal As Strings    ${resp.status_code}    200
    ${resp}=    Get Request    github    /users/bulkan
    Should Be Equal As Strings    ${resp.status_code}    200
    Log Dictionary    ${resp.json()}
    Dictionary Should Contain Value    ${resp.json()}    Bulkan Evcimen
    Dictionary Should Contain Item    ${resp.json()}    name    Bulkan Evcimen
