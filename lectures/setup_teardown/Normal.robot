*** Settings ***
Suite Setup       Log    ---Suite Setup---
Suite Teardown    Log    ---Suite Teardown---

*** Test Cases ***
Test Case 001
    [Setup]    Log    ---Before Test Case 001---
    Log    ---Test Case 001---
    [Teardown]    Log    ---After Test Case 001---

Test Case 002
    Log    ---Test Case 002---
