*** Settings ***
Resource  /Resources/PO/LandingPage.robot
Resource  /Resources/PO/TopNav.robot
Resource  /Resources/PO/MyAccountPageApp.robot

*** Variables ***


*** Keywords ***
My Account Page Loaded
    [Tags]  Load My Account Page
    LandingPage.Page Loaded
    TopNav.Go To My Account Page


Test Multiple Register Scenarios
    [Tags]  Register Error Scenarios
    MyAccountPageApp.Verify Page Loaded
