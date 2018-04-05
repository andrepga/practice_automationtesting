*** Settings ***
Resource  ../Data/InputData.robot
Resource  ../Resources/Commom.robot
Resource  ../Resources/PO/MyAccountRegApp.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***

*** Test Cases ***
Invali Register scenarios should display corret error message
