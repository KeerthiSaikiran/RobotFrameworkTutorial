*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC01
    Open Browser    https://www.google.com/     chrome
    Sleep    2
    Input Text      name:q      saikiran
    Sleep    2
    Click Button    name:btnK
    Sleep    2
    Close Browser


*** Keywords ***