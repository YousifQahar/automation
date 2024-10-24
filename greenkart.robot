*** Settings ***
Library    SeleniumLibrary
Resource  OpenandClose.robot
Resource  Actions.robot

Test Setup  OpenandClose.Open GreenKart Website
Test Teardown   OpenandClose.Close GreenKart Website


*** Test Cases ***
Buy Broccoli, Add 5 Items To Cart, and Place Order
    [Documentation]    Test case to buy 5 units of Broccoli, add them to the cart, place an order, and select a country
    Sleep    3s
    Wait Until Page Contains Element    xpath://h4[text()='Brocolli - 1 Kg']/parent::div//a[@class='increment']    10s
    Sleep    2s
    Set Quantity To 5 For Broccoli
    Sleep    2s
    Click Button    xpath://h4[text()='Brocolli - 1 Kg']/parent::div//button[text()='ADD TO CART']
    Sleep    2s
    Go To Checkout And Place Order
    Sleep    2s
    Select Country And Place Final Order
    Sleep    3s




