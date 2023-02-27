*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Demo Mouse actions handle
    [Documentation]    Mouse Actions Tutorials

    Open Browser  https://www.sugarcrm.com/au/request-demo/  Chrome
    Maximize Browser Window
    Sleep    3s

    Scroll Element Into View    //input[@placeholder='Business Email*']

    Mouse Down    //input[@placeholder='Business Email*']
    Sleep    2s

    Mouse Up    //input[@placeholder='Business Email*']
    Sleep    2s

    Scroll Element Into View    //button[@id='dropdownMenuButton']

#    Mouse Down On Link    //a[@role='button'][normalize-space()='CRM Solutions']
#    Sleep    2s

    Mouse Over    //a[normalize-space()='Watch Demo']
    Sleep    2s

    Mouse Out    //a[normalize-space()='Watch Demo']
    Sleep    2s

#    Mouse Down On Image
#    Sleep    2s

    Go To    https://demoqa.com/droppable/
    Drag And Drop    //div[@id='draggable']     //div[@id='simpleDropContainer']//div[@id='droppable']
    Sleep    3s

    Open Context Menu    //a[@id='droppableExample-tab-accept']
    Sleep    3s

    Close Browser