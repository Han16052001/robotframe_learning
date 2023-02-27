*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo Windows handle
    [Documentation]    Windows Tutorials

    Open Browser  https://the-internet.herokuapp.com/windows  Chrome
    Maximize Browser Window

    Wait Until Element Is Visible  //h3[contains(text(),'Opening a new window')]  timeout=5
    Click Element  css:[href="/windows/new"]

    @{WindowHandles}    Get Window Handles
    Sleep    3s

    @{WindowIdentifiers}    Get Window Identifiers
    Sleep    3s

    @{WindowTitles}    Get Window Titles
    Sleep    3s

    @{WindowNames}    Get Window Names
    Sleep    3s

    Set Window Position    100  200
    ${x}    ${y}=   Get Window Position
    Log    ${x}
    Log    ${y}
    Sleep    3s

    Set Window Size     800  600
    ${x}    ${y}=   Get Window Size
    Log    ${x}
    Log    ${y}
    Sleep    3s

    Switch Window   ${WindowHandles}[1]
    Log    ${WindowHandles}[1]

    Close Window
    Sleep    3s

    Switch Window   ${WindowHandles}[0]
    Close Window





