*** Settings ***
Library    SeleniumLibrary
Resource  Variable.robot

*** Keywords ***
Open GreenKart Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close GreenKart Website
    close browser