*** Settings ***
Library  Selenium2Library

*** Variables ***
${Link_Account_Locator} =  xpath=//*[@id="menu-item-50"]/a

*** Keywords ***
Go To My Account Page
    Click Link  ${Link_Account_Locator}

