*** Settings ***
Library  Selenium2Library
Resource  ../Data/InputData.robot
Resource  ../Resources/Commom.robot
Resource  ../Resources/MyAccountPage.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Invalid Register Scenarios Should Display Corret Error Message
    [Tags]  Registration Errors
    MyAccountPage.Test Multiple Register Scenarios
