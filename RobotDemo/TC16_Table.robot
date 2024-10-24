*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC16
    Open Browser        https://testautomationpractice.blogspot.com/        chrome
    Maximize Browser Window
    Sleep    2
    Scroll Element Into View    name=BookTable
    Sleep    2
    ${rows}=        Get Element Count    xpath=//table[@name='BookTable']/tbody/tr
    Log To Console    ${rows}
    ${header}=      Get Element Count    xpath=//table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${header}
    ${columns}=     Get Element Count    xpath=//table[@name='BookTable']/tbody/tr/td
    Log To Console    ${columns}
    Table Header Should Contain    xpath=//table[@name='BookTable']/tbody/tr[1]    Author
    Table Row Should Contain    xpath=//table[@name='BookTable']/tbody/tr    2    Learn Selenium
    Table Column Should Contain    xpath=//table[@name='BookTable']/tbody    2    Animesh
    Table Cell Should Contain    xpath=//table    4    3    Javascript