*** Settings ***
Library  Selenium2Library

*** Variables ***
${Text_Register} =  Register
${Text_Login} =  Login
${Email_Input_Path}=  xpath=//input[@id='reg_email']
${Password_Input_Path}=  xpath=//input[@id='reg_password']

*** Keywords ***
Complet Register Fields and Submit
   [Arguments]  ${UserData}
   Run Keyword If ${UserData.Email} != #Blank  Complet Email Field
   Run Keyword If ${UserData.Password} != #Blank  Complet Password Field
   Click Register Button


Verify Page Loaded
    Wait Until Page Contains  ${Text_Register}
    Wait Until Page Contains  ${Text_Login}


Complet Email Field
    [Arguments]  ${Email}
    Input Text  ${Email_Input_Path}  ${Email}


Complet Password Field
    [Arguments]  ${Password}
    Input Text  ${Password_Input_Path}  ${Password}


Click Register Button
    Click Button  name=register
