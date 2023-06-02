*** Settings ***

Library    Colletions
Library    DateTime
Library    Selenium
Resource    step.resource
Variables    filevariable.py


*** Test Cases ***
Test 1
    [Tags]    tag1
    Given ini step 1
    When ini step 2
    Then ini step 3    ${Var2}

Test 2
    [Tags]    tag2
    Log    horee    




