*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo Arlets handle
    [Documentation]    Arlets Tutorials

    Open Browser  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert  Chrome
    Maximize Browser Window
    Sleep    3s

    Select Frame    id:iframeResult
    Click Button    //button[normalize-space()='Try it']
    Sleep    2s
    ${message_1}    Handle Alert    action=ACCEPT   timeout=2s

#    Go To    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert
#    Select Frame    id:iframeResult
#    Click Button    //button[normalize-space()='Try it']
#    Sleep    2s
#    ${message_2}    Handle Alert    action=DISMISS    timeout=5s

#    Go To    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert
#    Select Frame    id:iframeResult
#    Click Button    //button[normalize-space()='Try it']
#    Sleep    2s
#    Input Text Into Alert    Nguyen     action=ACCEPT
#    Sleep    2s

    Go To    https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert
    Select Frame    id:iframeResult
    Click Button    //button[normalize-space()='Try it']
    Sleep    2s
    Alert Should Be Present     text=Hello! I am an alert box!  timeout=2s
    Sleep    2s

    Close Browser