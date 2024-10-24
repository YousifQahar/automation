*** Settings ***
Library    SeleniumLibrary
Resource  Variable.robot


*** Keywords ***
Set Quantity To 5 For Broccoli
    [Documentation]    Use a FOR loop to set the quantity of Broccoli to 5 by clicking the increment button
    FOR    ${i}    IN RANGE    4
        Click Element    ${BROCCOLI_INCREMENT}
        Sleep    1s
    END


Go To Checkout And Place Order
    [Documentation]    Go to checkout and place the order
    Click Element    xpath://img[@alt='Cart']    # Open the cart
    Sleep    2s
    element text should be  xpath://p[@class='product-name']   ${EXPECTED_ITEM}
    sleep  3s

    # Verify the item quantity directly in the cart
    ${item_quantity}=    Get Value    xpath://input[@class='quantity']
    should be equal as numbers    ${item_quantity}   ${EXPECTED_QUANTITY}

    Click Element    xpath://button[text()='PROCEED TO CHECKOUT']    # Proceed to checkout
    Sleep    3s
    Click Element    xpath://button[text()='Place Order']    # Click Place Orde
    sleep  3s

Select Country And Place Final Order
    [Documentation]    Select country from dropdown and place the final order
    click element  xpath://*[@id="root"]/div/div/div/div/div/select
    sleep  2s
    Select From List By Value    xpath://*[@id="root"]/div/div/div/div/div/select  ${COUNTRY}    # Select the desired country
    Sleep    2s
    Click Element    xpath://input[@type='checkbox']    # Agree to terms and conditions
    sleep  2s
    Click Button    xpath://button[text()='Proceed']    # Click Proceed to complete the order
    sleep  2s

