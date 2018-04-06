*** Settings ***
Library  Selenium2Library
Resource  ../Data/InputData.robot

*** Variables ***
${Image} =  src=//practice.automationtesting.in/wp-content/uploads/2017/01/Shop-For-Selenium-Books.png

*** Keywords ***
Page Loaded
    Open Landing Page
    Verify Landing Page Loaded

Open Landing Page
    Go To  ${BASE_URL}
    Sleep  2s


Verify Landing Page Loaded
    Page Should Contain Image  ${Image}