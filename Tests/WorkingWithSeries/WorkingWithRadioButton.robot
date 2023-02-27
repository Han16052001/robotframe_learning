*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Demo Radio button handle
    [Documentation]    Radio Button tutorial

    Open Browser  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_radio  Chrome
    Maximize Browser Window
    Sleep    3s
#    Scroll Element Into View

    Select Frame    id:iframeResult

    Page Should Contain Radio Button    //input[@id='html']

    Page Should Not Contain Radio Button    //input[@id='java']

    Radio Button Should Not Be Selected    fav_language

    Select Radio Button  fav_language  html

    Radio Button Should Be Set To   fav_language  html

    Close Browser