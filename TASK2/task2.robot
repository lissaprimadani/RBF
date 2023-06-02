*** Settings ***



*** Variables ***
@{List1}       a    b    c    d
@{List2}       1    2    3    4

*** Test Cases ***
Iterate over two lists manually

    # FOR    ${x}    IN ZIP    ${LIST1}
    #     Log To Console    ${x}
    #     FOR    ${y}    IN    ${LIST2}
    #         Log To Console    ${y}
    #     END
        
    # END

    #ini yang benar.
    FOR    ${x}    IN ZIP    ${LIST1}  ${LIST2}
        Log To Console    ${x}
    END