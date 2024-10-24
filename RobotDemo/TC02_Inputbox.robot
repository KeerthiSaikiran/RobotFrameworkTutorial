*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.google.com/
${bName}        chrome


*** Test Cases ***
TC02
    Open Browser        ${url}      ${bName}
    Maximize Browser Window
    Verifying Text
    Close Browser


*** Keywords ***
Verifying Text
    ${"nameFeild"}      Set Variable        name:q
    Element Should Be Enabled    ${"nameFeild"}
    Element Should Be Visible    ${"nameFeild"}
    Clear Element Text    ${"nameFeild"}
    Sleep    2
    Input Text    ${"nameFeild"}    Saikiran
    Sleep    2
    Clear Element Text    ${"nameFeild"}
    Sleep    2