*** Settings ***
Library  Selenium2Library
Resource  ../../Data/InputData.robot

*** Variables ***
${LOGIN_TEXT} =  Login
${LOGIN_EMAIL_INPUT}=  xpath=//input[@id='username']
${LOGIN_PASSWORD}=  xpath=//input[@id='password']
${LOGIN_SUBMIT_BUTTON}=  name=register


*** Keywords ***