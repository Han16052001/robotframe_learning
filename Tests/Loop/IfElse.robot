*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo If Else handle
    [Documentation]    If else Tutorials

    Open Browser  https://www.saucedemo.com/  Chrome
    Maximize Browser Window
    Sleep    3s

    Input Text    //input[@id='user-name']  standard_user
    Input Password    //input[@id='password']   secret_sauce
    Click Button    //input[@id='login-button']

    ${items_on_page}    Get Element Count    //div[@class='inventory_item']

    Run Keyword If  ${items_on_page} == 10  Test Keyword 1
    ...  ELSE IF  ${items_on_page} <= 10  Test Keyword 2
    ...  ELSE  Test Keyword 3

    Close Browser

*** Keywords ***
Test Keyword 1
    Log To Console    Excuted Keyword 1 - Founded items as expected
    Close Browser
Test Keyword 2
    Log To Console    Excuted Keyword 2 - Founded less items than expected
    Close Browser
Test Keyword 3
    Log To Console    Excuted Keyword 1 - Exception
    Close Browser
