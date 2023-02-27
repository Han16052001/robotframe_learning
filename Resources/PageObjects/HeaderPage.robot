*** Settings ***
Library    SeleniumLibrary
Variables    ../WebElements.py

*** Variables ***
# ${search_text}  mobile
# @{search_text}  books  travel  robot  gifts  # this is list, use this ${search_text}[1] -> result=travel
# &{search_text}  abc=books  bcd=travel  # this is dicts, use this ${search_text.abc} -> results=books

*** Keywords ***
Verify search bar by input text in it and click search
    [Arguments]    ${search_text}

    Input Text    ${home_page_search_text_box}  ${search_text}
    Press Keys    ${home_page_search_button}  [Return]

Verify the Advanced search link
    Click Element    ${home_page_advance_search_link}
