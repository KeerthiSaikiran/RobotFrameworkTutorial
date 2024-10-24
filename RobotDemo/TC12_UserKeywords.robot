*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resource.robot

*** Variables ***


*** Test Cases ***
TC11
    withoutargument
    ${title_value}=     withargument    https://demo.guru99.com/test/simple_context_menu.html    chrome
    Log To Console    ${title_value}

*** Keywords ***
withoutargument
    Open Browser        https://demo.guru99.com/test/simple_context_menu.html       chrome
    Maximize Browser Window
    Sleep    5
    Close Browser
#withargument
#    [Arguments]     ${url}      ${browser}
#    Open Browser        ${url}      ${browser}
#    Maximize Browser Window
#    ${title}        Get Title
#    [Return]        ${title}
#    Sleep       5

#Note with argument keyword is in Resurce folder ../Resources/resource.robot
