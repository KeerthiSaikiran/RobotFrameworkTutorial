*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}       https://www.selenium.dev/selenium/docs/api/java/index.html
${bName}     chrome


*** Test Cases ***
FrameDemo
    Open Browser        ${url}      ${bName}
    Set Selenium Speed    3
    Maximize Browser Window
    Select Frame    name=packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Select Frame    name=packageFrame
    Click Link    TakeScreenshot
    Unselect Frame
    Select Frame    name=classFrame
    Click Link    ChromeDriver
    Unselect Frame
    Close Browser
