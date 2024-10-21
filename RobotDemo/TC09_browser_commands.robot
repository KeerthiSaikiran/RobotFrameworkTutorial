*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC09
    Open Browser    https://www.google.com      chrome
    Maximize Browser Window
    Sleep    2
    ${loc}=     Get Location
    Log To Console    ${loc}
    Sleep    2
    Go To    https://demo.automationtesting.in/Windows.html
    Sleep    2
    ${loc1}=     Get Location
    Log To Console    ${loc1}
    Sleep    2
    Go Back
    Sleep    2
    ${loc2}=     Get Location
    Log To Console    ${loc2}
    Sleep    2

#    in selenium we use navigate.to() to open a new url upon an already opened url in same browser,
#    back() is used for the back of the browser page
