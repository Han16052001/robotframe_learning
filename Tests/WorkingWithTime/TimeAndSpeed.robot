*** Settings ***
Library    SeleniumLibrary  timeout=10s

*** Variables ***

*** Test Cases ***
Demo Time and Speed handle
    [Documentation]    Time and speed Tutorials
    ${default_selenium_time_out}    Get Selenium Timeout
    ${default_slenium_speed}    Get Selenium Speed
    Set Selenium Timeout    6s
    Set Selenium Speed    3s

    Open Browser  https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert  Chrome
    Maximize Browser Window

    Capture Page Screenshot  //button[@id='runbtn']

    ${default_selenium_time_out_1}    Get Selenium Timeout
    ${default_slenium_speed_1}    Get Selenium Speed

    Close Browser


