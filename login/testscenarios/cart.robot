*** Settings ***
Resource  ../resources/keywords.robot
Resource  ../resources/locators.robot


*** Test Cases ***

Validate User can add an item in the Cart

    Open the Browser with URL
    Fill the login page details    ${valid_username}    ${valid_password}
    Click on Item to Add to Cart Button
    Click On Cart Icon
    Verify cart item is present on the cart page