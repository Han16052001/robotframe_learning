*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Demo Checkboxs handle
    [Documentation]    Checkboxs tutorial

    Open Browser  https://www.w3schools.com/tags/tryit.asp?filename=tryhtml5_input_type_checkbox  Chrome
    Maximize Browser Window
    Sleep    3s

    Select Frame    id:iframeResult

    Page Should Contain Checkbox    //iframe[@id='iframeResult']

    Page Should Not Contain Checkbox    id:vehicle4

    Select Checkbox    //iframe[@id='iframeResult']

    Checkbox Should Be Selected  //iframe[@id='iframeResult']

    Capture Page Screenshot

    Sleep    4s

    Unselect Checkbox    //iframe[@id='iframeResult']

    Checkbox Should Not Be Selected    //iframe[@id='iframeResult']

    Capture Page Screenshot

    Sleep    4s

    Close Browser