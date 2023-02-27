*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo Frames handle
    [Documentation]    Frames Tutorials

    Open Browser  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_checkbox  Chrome
    Maximize Browser Window
    Sleep    3s

    Select Frame    id:iframeResult

    Current Frame Should Contain    Show Checkboxes

    Current Frame Should Not Contain    JavaScripts

    Unselect Frame

    Frame Should Contain    id:iframeResult  Show Checkboxes

    Close Browser