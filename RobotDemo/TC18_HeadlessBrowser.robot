*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://the-internet.herokuapp.com/javascript_alerts
${bName}        headlesschrome

*** Test Cases ***
TC06
    Open Browser        ${url}      ${bName}
    Maximize Browser Window
    Sleep    2
    Click Button    xpath=//*[@id='content']/div/ul/li[2]/button
    Sleep    2
#    Handle Alert        Accept
#    Handle Alert        Dismiss
#    Alert Should Be Present     I am a JS Confirm
    Handle Alert        Leave
    Sleep    2
    Close Browser
