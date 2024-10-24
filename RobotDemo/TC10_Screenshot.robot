*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC10
    Open Browser        https://www.google.com      chrome
    Maximize Browser Window
    Sleep    2
    Input Text    name=q    Testing tutorialspoint
    Sleep    2
    Capture Element Screenshot    name=q        element.png
    Sleep    2
    Capture Page Screenshot     page.png
    Sleep    2