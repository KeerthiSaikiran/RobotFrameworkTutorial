*** Settings ***

Suite Setup     Log To Console    login application

Suite Teardown      Log To Console    logout application

Test Setup      Log To Console    excel values

Test Teardown       Log To Console    close excel file


*** Test Cases ***
TC01
    Log To Console    adding user
TC02
    Log To Console    removing user
TC03
    Log To Console    add to cart