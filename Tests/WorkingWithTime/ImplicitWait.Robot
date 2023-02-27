*** Settings ***
Library    SeleniumLibrary  timeout=10s

*** Variables ***

*** Test Cases ***
Demo Implicit Wailt handle
    [Documentation]    Implicit wait Tutorials

    Open Browser  https://www.facebook.com  Chrome
    Maximize Browser Window

    ${default_implicit_wait}    Get Selenium Implicit Wait

    Set Selenium Implicit Wait    15s
    ${custom_implicit_wait}    Get Selenium Implicit Wait

    Input Text   //input[@id='email']   emnguyen123@gmail.com

    Capture Page Screenshot  //h2[contains(text(),'Facebook helps you connect and share with the peop')]

    Input Text   id:pass   Ngueyn123@@

    Close Browser
