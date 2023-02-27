*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo For loop handle
    [Documentation]    For loop Tutorials

    Open Browser  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple  Chrome
    Maximize Browser Window
    Sleep    3s

    Select Frame    id:iframeResult

    ${list_label}   Get Webelements  //select[@id='cars']

    FOR    ${elements}  IN  ${list_label}
            ${text}=  Get Text    ${elements}
    END

    Close Browser