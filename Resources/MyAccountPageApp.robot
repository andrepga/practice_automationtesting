*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/Register.robot

*** Variables ***


*** Keywords ***
Test Multiple Register Scenarios
    [Arguments]  ${UserData}
    LandingPage.Page Loaded
    TopNav.Go To My Account Page
    Register.Verify Page Loaded
    Register.Fill Register Fields and Submit  ${UserData}
    Register.Verify Error Message  ${UserData.ExpectedErrorMessage}

Test Multiple Login Scenarios
  [Arguments]  ${UserData}
  Verify Page Loaded
  Fill Username Field
  Fill Password Field

