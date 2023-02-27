*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Search Result
    Input Text    //input[@id='gh-ac']  mobile
    Press Keys    //input[@id='gh-btn']  [Return]
    Page Should Contain    results for mobile

Filer Result By Condition
    Mouse Over  //span[contains(text(),'Condition')]
    Click Element    //span[contains(text(),'Condition')]
    Sleep    3s
    Mouse Down  //body[1]/div[8]/div[4]/div[1]/div[1]/div[1]/div[2]/div[2]/span[1]/span[1]/div[1]/div[2]/span[2]
    Click Element  //body[1]/div[8]/div[4]/div[1]/div[1]/div[1]/div[2]/div[2]/span[1]/span[1]/div[1]/div[2]/span[2]

Verify Filter Reuslt
    Element Should Contain  //span[contains(text(),'P60 pro 6.8inch Smartphone Android Dual SIM Facial')]
