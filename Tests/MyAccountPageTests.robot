*** Settings ***
Library  Selenium2Library
Resource  ../Data/InputData.robot
Resource  ../Resources/Commom.robot
Resource  ../Resources/MyAccountPageApp.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Invalid Register Scenarios Should Display Corret Error Message
    [Template]  MyAccountPageApp.Test Multiple Register Scenarios
    [Tags]  all
    ${REGISTRATION_INVALID_EMAIL}
    ${REGISTRATION_EMPTY_EMAIL}
    ${REGISTRATION_EMPTY_PASSWORD}
    ${REGISTRATION_EMPTY_EMAIL_PASSWORD}
    ${REGISTRATION_EMAIL_REGISTER_EMPTY_PASSWORD}

Invalid Login Scenarios Should Display Correct Error Message
   [Template]  MyAccountPageApp.Test Multiple Login Scenarios
   [Tags]  all
   ${LOGIN_INVALID_USER}
   ${LOGIN_INVALID_PASSWORD}
   ${LOGIN_EMPTY_PASSWORD}
   ${LOGIN_EMPTY_USERNAME}
   ${LOGIN_EMPTY_USERNAME_PASSWORD}

