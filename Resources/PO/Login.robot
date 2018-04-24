*** Settings ***
Library  Selenium2Library
Resource  ../../Data/InputData.robot

*** Variables ***
${LOGIN_TEXT} =  Login
${LOGIN_USERNAME_INPUT}=  xpath=//input[@id='username']
${LOGIN_PASSWORD_INPUT}=  xpath=//input[@id='password']
${LOGIN_SUBMIT_BUTTON}=  name=register


*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  ${LOGIN_TEXT}


Fill Username Field
  [Arguments]  ${Username}
  Input Text  ${LOGIN_USERNAME_INPUT}  ${Username}


Fill Password Field
  [Arguments]  ${Password}
  Input Text  ${LOGIN_PASSWORD_INPUT}  ${Password}


