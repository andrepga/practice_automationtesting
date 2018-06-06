*** Settings ***
Library  Selenium2Library

*** Variables ***
${REGISTER_TEXT} =  Register
${REGISTER_EMAIL_Input}=  xpath=//input[@id='reg_email']
${REGISTER_PASSWORD}=  xpath=//input[@id='reg_password']
${REGISTER_SUBMIT_BUTTON}=  name=register


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  ${REGISTER_TEXT}


Register Fill Email Field
    [Arguments]  ${Email}
    Input Text  ${REGISTER_EMAIL_Input}  ${Email}


Register Fill Password Field
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD}  ${Password}


Click Register Button
    Click Button  ${REGISTER_SUBMIT_BUTTON}


Fill Register Fields and Submit
   [Arguments]  ${UserData}
   Run Keyword Unless  '${UserData.Email}' == '#BLANK'  Register Fill Email Field  ${UserData.Email}
   Run Keyword Unless  '${UserData.Password}' == '#BLANK'  Register Fill Password Field  ${UserData.Password}
   Click Register Button


Verify Error Message
    [Arguments]  ${ErrorMessage}
    Wait Until Page Contains  ${ErrorMessage}
    Sleep  5s
