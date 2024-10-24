*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://demoqa.com/select-menu
${bName}        chrome

*** Test Cases ***
TC04
    Open Browser        ${url}      ${bName}
    Maximize Browser Window
    Sleep    2
    handling MultiSelection
    Sleep    2
    Close Browser


*** Keywords ***
handling MultiSelection
    Set Selenium Speed    3

    ${'selectlocator'}      Set Variable        id=cars

    Select From List By Index    ${'selectlocator'}      0

    Select From List By Index    ${'selectlocator'}      1

    Select From List By Index    ${'selectlocator'}      3
