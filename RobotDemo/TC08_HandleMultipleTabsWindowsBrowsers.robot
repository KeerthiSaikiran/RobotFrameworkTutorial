*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC08
    Open Browser    https://demo.automationtesting.in/Windows.html      chrome
    Maximize Browser Window
    Set Selenium Speed    3
    Click Button    xpath=//*[@id='Tabbed']/a/button
    Switch Window   title=Selenium
#    Click Link    xpath=//a[@href='https://www.browserstack.com/automate?utm_campaign=open-source-sponsor&utm_campaigncode=701OW000009sQwVYAU&utm_medium=partnered&utm_source=seleniumorg']
    ${title}=   Get Title
    Log To Console      ${title}
    Open Browser        https://www.google.com      edge
    Maximize Browser Window
    ${title}=       Get Title
    Log To Console    ${title}
    Switch Browser    1
    ${title2}=      Get Title
    Log To Console    ${title2}
    Switch Browser    2
    ${title}=       Get Title
    Log To Console    ${title}
    Close Browser