*** Settings ***
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/MyAccountPageApp.robot

*** Variables ***


*** Keywords ***
Test Multiple Register Scenarios
    [Tags]  Register Error Scenarios
    LandingPage.Page Loaded
    TopNav.Go To My Account Page
    MyAccountPageApp.Verify Page Loaded
