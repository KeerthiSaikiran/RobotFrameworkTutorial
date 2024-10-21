*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://demo.automationtesting.in/Register.html
${bName}        chrome

*** Test Cases ***
TC04
    Open Browser        ${url}      ${bName}
    Maximize Browser Window
    Sleep    2
    handling DropDown
    Sleep    2
    Close Browser


*** Keywords ***
handling DropDown
    ${"dropdownId"}     Set Variable    id:Skills
    Sleep    2
    Scroll Element Into View    ${"dropdownId"}
    Sleep    2
    Select From List By Label    ${"dropdownId"}     Adobe InDesign
    Sleep    2
    Select From List By Value    ${"dropdownId"}      Analytics
    Sleep    2
    Select From List By Index    ${"dropdownId"}      5
