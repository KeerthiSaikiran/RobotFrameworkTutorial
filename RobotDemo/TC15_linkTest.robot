*** Settings ***
Library     SeleniumLibrary



*** Test Cases ***
TC15
    Open Browser        https://www.google.com/     chrome
    Maximize Browser Window
    Sleep    2
    ${count}=       Get Element Count    xpath://div[@id='SIvCob']//a
    Log To Console    ${count}

    FOR    ${counter}    IN RANGE    1    ${count}
        ${link_text}=       Get Text    xpath=(//div[@id='SIvCob']//a)[${counter}]
        Log To Console    ${link_text}

    END