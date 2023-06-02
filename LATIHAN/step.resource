*** Settings ***

Library    Colletions
Library    DateTime
Library    Selenium
Variables    filevariable.py

*** Keywords ***
Keyword 1
    #narik data dari filevariable.py
    Log    ${Data1}


Keyword 2
    [Arguments]    ${x}
    Log    ${x}

ini step 1
    Log    ini adalah step 1


ini step 2
    Log    ini adalah step 2

ini step 3
    [Arguments]    ${Value}
    Log    value data 3 adalah: ${Value}

    
*** Variables ***
#Variable = semua variable robot framework typenya string
${Var1}    5
${Var2}    Test Variable

#List
@{List1}    1    2    3    4

#Dictionary
&{dict1}    key1=bali    key2=bandung    key3=jakarta