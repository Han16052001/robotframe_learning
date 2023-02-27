*** Settings ***
Library    SeleniumLibrary  timeout=10s

*** Variables ***

*** Test Cases ***
Demo Explicit Wailt handle
    [Documentation]    Explicit wait Tutorials

    Open Browser  https://anhtester.com/  Chrome
    Maximize Browser Window

    Wait Until Page Contains    Khi bạn học với Anh Tester
    Wait Until Page Contains Element    //a[contains(text(),'Tất Cả Khóa Học')]
    Wait Until Page Does Not Contain    Toi la nguyen
    Wait Until Page Does Not Contain Element      //a[contains(text(),'Toi khong biet code')]

    Sleep    3s
    Go To    https://anhtester.com/courses/website-testing

    Wait Until Location Is  https://anhtester.com/courses/website-testing
    Wait Until Location Is Not  https://anhtester.com/course/website-testing
    Wait Until Location Contains    courses
    Wait Until Location Does Not Contain    api

    Wait Until Element Contains    //h3[normalize-space()='Search Courses']   Search Courses  timeout=5s  error=Not Found Text
    Wait Until Element Does Not Contain    //h3[normalize-space()='Search Courses']  Tìm kiếm khoá học  timeout=5s  error=Founded text
    Wait Until Element Is Visible    //h3[normalize-space()='Course Tags']
    Wait Until Element Is Not Visible    //h3[normalize-space()='Courses Tag']
    Wait Until Element Is Enabled    //h2[@class='card__title']//a[normalize-space()='Selenium WebDriver with Java Basic to Advanced']

    Close Browser
