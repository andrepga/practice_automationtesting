*** Settings ***
Library  Selenium2Library
Resource  ../../Data/InputData.robot


*** Variables ***
${Image_Path} =  xpath=//*[@id="n2-ss-6"]/div[1]/div/div/div[1]/div[1]/img

*** Keywords ***
Open Landing Page
    Go To  ${BASE_URL}
    Sleep  2s


Verify Landing Page Loaded
    Page Should Contain Image  ${Image_Path}


Page Loaded
    Open Landing Page
    Verify Landing Page Loaded