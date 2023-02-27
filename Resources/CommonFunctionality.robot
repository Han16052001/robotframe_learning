*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.ebay.com/
${browser}  chrome

*** Keywords ***
Start
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    2s

Finish
    Close Browser