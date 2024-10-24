*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem


*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${bName}     chrome


*** Test Cases ***
TC13
    Open Browser        ${url}      ${bName}
    Maximize Browser Window
    Sleep    2
#    Execute Javascript      window.scrollTo(0,950)
#    Sleep    5
#    Scroll Element Into View    name=BookTable
#    Sleep    5
    Execute Javascript      window.scrollTo(0, document.body.scrollHeight)
    Sleep    5
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)
    Sleep    2



