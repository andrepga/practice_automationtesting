*** Settings ***
Library  Selenium2Library

*** Variables ***
${Text_Register} =  Register
${Text_Login} =  Login

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  ${Text_Register}
    Wait Until Page Contains  ${Text_Login}