*** Settings ***

*** Test Cases ***
Test Case 1 Munculkan list
    Log    ${List}

Test Case 2 Munculkan list 2
    List Local Variable

# Test Cases 3 Munculkan global variable
#     List 3

Test Cases 4 Munculkan nilai atau index list
    Log    ${List}[2]
    Log    ${List}[0]
    Log    ${List}[:3]
    Log    ${List}[3:]
    Log    ${list}[-1]
    Log    ${List}[0:3:5]
    Log    ${List}
    List baru

Test Cases 5 
    Keyword Dictionary 1
    Keyword Dictionary 2
    Munculin nama dari dict 2

Test Cases 6
    Log    ${DICTIONARY}.list[1]


Test Cases 7
    FOR    ${i}    IN    @{List}
        Log    ${i}
    END



    FOR    ${b}    IN RANGE    1    10
        Log    ${b}
    END



    FOR    ${c}    IN    ${Dict}
        Log    ${c}
    END



    FOR    ${key}    IN   @{Dict}
        Log    ${Dict}[${key}] 
    END


Test Case 8
    ${x}    Set Variable    ${0}
    WHILE    ${x} < 10
        Log To Console    woke
        ${x}    Evaluate    ${x}+1
    END


    ${y}    Set Variable    ${0}
    WHILE    ${y} < 10    limit=5
        Log To Console    Sip
        ${y}    Evaluate    ${y}+1
    END


    


*** Keywords ***
List Local Variable
    @{List2}    Create List    empat    lima     enam
    #Set Global Variable    ${LIST2}
    Log    ${List2}

List 3
    #untuk memakai LIST 2 harus aktifkan set global variable
    Log    ${LIST3}

List Baru
    @{List5}    Create List   ${List4}[0]    ${List4}[2]    ${List4}[4]
    Log    ${List5}

Keyword Dictionary 1
    Log    ${Dict}

Keyword Dictionary 2
    &{Dict2}    Create Dictionary    nama=naruto    umur=17
    Log    ${Dict2}

    Set Global Variable    ${Dict2}
    Log    ${Dict2}

Munculin nama dari dict 2
    Log    ${Dict2}[nama]
    Log    ${Dict2.nama}


*** Variables ***
@{List}    satu    dua    tiga    empat    lima
@{List4}    1    2    3    4    5    6
&{Dict}    nama=lissa    umur=21    pekerjaan=QA

${STRING}    Mantep bang!!
${NUMBER}    ${1}
@{LIST6}    one    two    three
${DICTIONARY}    string=${STRING}    number=${NUMBER}    list=${LIST6}
