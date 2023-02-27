*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Demo WebElements
    [Documentation]    WebElements tutorial

    Open Browser    https://google.com  Chrome  alias=chromeRCV
    Maximize Browser Window
    Sleep    3s

    ${attr}  Get Element Attribute  css:div[class='FPdoLc lJ9FBc'] input[name='btnK']  class

    ${count}    Get Element Count   css:div[class='FPdoLc lJ9FBc'] input[name='btnK']

    ${width}    ${height}   Get Element Size    css:div[class='FPdoLc lJ9FBc'] input[name='btnK']

    Get Webelement  css:div[class='FPdoLc lJ9FBc'] input[name='btnK']

    @{webelements}  Get Webelements    css:div[class='FPdoLc lJ9FBc'] input[name='btnK']

    Capture Element Screenshot    //input[@title='Tìm kiếm']

    Assign Id To Element    name:btnk   RCVid
    Page Should Contain Element    RCVid

    Element Should Be Focused    //input[@title='Tìm kiếm']
    Element Should Be Visible    //input[@title='Tìm kiếm']

    Input Text    //input[@title='Tìm kiếm']    facebook

    Clear Element Text    //input[@title='Tìm kiếm']

    Cover Element    css:div[class='FPdoLc lJ9FBc'] input[name='btnI']

    Element Attribute Value Should Be    name:btnK  value   Google Search

    Element Should Be Enabled    name:btnk

    Element Should Not Be Visible    name:btnKgf

    Element Should Contain      //a[contains(text(),'Cách hoạt động của Tìm kiếm')]  Cách hoạt động

    Element Should Not Contain  //a[contains(text(),'Cách hoạt động của Tìm kiếm')]  Google Search

    Element Text Should Be  //a[contains(text(),'Cách hoạt động của Tìm kiếm')]  Cách hoạt động của Tìm kiếm'

    Element Text Should Not Be  //a[contains(text(),'Cách hoạt động của Tìm kiếm')]  Cách hoạt động

    Double Click Element    //div[@aria-label='Công cụ nhập']

    Click Element At Coordinates    //img[@alt='Google']    10  20

#    Element Should Be Disabled    name:btnk

    Close Browser

