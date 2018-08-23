*** Settings ***
Suite Setup       Run Keywords    Log    ---Suite Setup 1---
...               AND    Log    ---Suite Setup 2---
Suite Teardown    Log    ---Suite Teardown---
Test Setup        Log    ---Test Setup---
Test Teardown     Log    ---Test Teardown---

*** Test Cases ***
Test Case 001
    [Setup]    Log    ---Before Test Case 001---
    Log    ---Test Case 001---
    [Teardown]    Log    ---After Test Case 001---

Test Case 002
    Log    ---Test Case 002---
