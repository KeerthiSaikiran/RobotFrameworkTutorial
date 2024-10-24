*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC11
    Open Browser        https:testautomationpractice.blogspot.com/      chrome
    Maximize Browser Window
    Sleep    5
    Double Click Element        xpath=//*[@id="HTML10"]/div[1]/button
    Drag And Drop    id:draggable    id:droppable
    Go To    https://demo.guru99.com/test/simple_context_menu.html
    Open Context Menu    xpath=//*[@id="authentication"]/span   #to perform a right click we use Open Context Menu
    Sleep    5
    Click Element    xpath=//*[@id="authentication"]/ul/li[1]/span
    Sleep    5

