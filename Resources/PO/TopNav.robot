*** Settings ***
Library  Selenium2Library

*** Variables ***
${Link_Account_Text} =  text=My Account

*** Keywords ***
Go To My Account Page
    Click Link  ${Link_Account_Text}

