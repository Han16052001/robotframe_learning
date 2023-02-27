*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo Frames handle
    [Documentation]    Frames Tutorials

    Open Browser  https://www.facebook.com/signup  Chrome
    Maximize Browser Window
    Sleep    3s

    Page Should Contain List    //select[@id='day']
    Page Should Not Contain List    //select[@id='age']

    ${all_items}    Get List Items    //select[@id='day']
    ${list_label}   Get Selected List Label  //select[@id='day']
    ${lits_value}   Get Selected List Value  //select[@id='day']

    List Selection Should Be    //select[@id='day']     26

    Select From List By Index    //select[@id='day']    1
    ${list_label_1}  Get Selected List Label    //select[@id='day']
    Sleep     3s

    Select From List By Label    //select[@id='day']    16
    ${list_label_2}  Get Selected List Label    //select[@id='day']
    Sleep     3s

    Select From List By Value    //select[@id='day']    5
    ${list_label_3}  Get Selected List Label    //select[@id='day']
    Sleep     3s

# Mutilple select list
    Go To    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame    id:iframeResult
    Select All From List    //select[@id='cars']
    Sleep    3s

    ${list_label}   Get Selected List Labels    //select[@id='cars']
    Sleep    3s
    Unselect From List By Index    //select[@id='cars']     1
    Sleep    3s
    Unselect From List By Label    //select[@id='cars']     Volvo
    Sleep    3s
    Unselect From List By Value    //select[@id='cars']     audi
    Sleep    3s

    ${list_value}   Get Selected List Values    //select[@id='cars']
    Sleep    3s
    Unselect All From List    //select[@id='cars']
    Sleep    3s
    List Should Have No Selections    //select[@id='cars']

    Close Browser
