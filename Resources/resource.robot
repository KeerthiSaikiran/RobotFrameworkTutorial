*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
withargument
    [Arguments]     ${url}      ${browser}
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    ${title}        Get Title
    [Return]        ${title}
    Sleep       5