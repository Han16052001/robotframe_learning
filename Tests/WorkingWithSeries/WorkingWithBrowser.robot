*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo Browser Handle
    [Documentation]    Browser Windows Tutorials

    Open Browser    https://google.com  Chrome  alias=ChromeRCV

    Maximize Browser Window

    Open Browser    about:blank  edge  alias=edgeRCV

    @{alias}    Get Browser Aliases

    Log    ${alias}[1]

    @{browser_id}   Get Browser Ids

    Log    ${browser_id}[1]

    Switch Browser    1

    Input Text    //input[@title='Tìm kiếm']    facebook

    Sleep    4s

    Switch Browser    ${browser_id}[1]

    Go To     https://youtube.com

    Close All Browsers