*** Settings ***
Library  Selenium2Library
Resource  ../../Data/InputData.robot

*** Variables ***
${LOGIN_TEXT} =  Login
${LOGIN_USERNAME_INPUT}=  xpath=//input[@id='username']
${LOGIN_PASSWORD_INPUT}=  xpath=//input[@id='password']
${LOGIN_SUBMIT_BUTTON}=  name=login


*** Keywords ***
Verify Page Loaded
  Wait Until Page Contains  ${LOGIN_TEXT}


Fill Username Field
  [Arguments]  ${Username}
  Input Text  ${LOGIN_USERNAME_INPUT}  ${Username}


Fill Password Field
  [Arguments]  ${Password}
  Input Text  ${LOGIN_PASSWORD_INPUT}  ${Password}



Click Login Button
    Click Button  ${LOGIN_SUBMIT_BUTTON}


Fill Login Fields and Submit
  [Arguments]  ${UserData}
  Run Keyword Unless  '${UserData.User}' == '#BLANK'  Fill Username Field  ${UserData.User}
  Run Keyword Unless  '${UserData.Password}' == '#BLANK'  Fill Password Field  ${UserData.Password}
  Click Login Button


Verify Error Message
  [Arguments]   ${ErrorMessage}
  Wait Until Page Contains  ${ErrorMessage}
  Sleep  5s