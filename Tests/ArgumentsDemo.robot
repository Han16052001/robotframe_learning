*** Settings ***

*** Test Cases ***
Agrument demo keyword test 1
    Argument Demo Keyword  anhnguyen  anhnguyen123

Agrument demo keyword test 2
    Argument Demo Keyword  nguyenvu  nguyenvu123

*** Keywords ***
Argument demo keyword
    [Arguments]    ${arg1}  ${arg2}
    Log    ${arg1}
    Log    ${arg2}