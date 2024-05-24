*** Settings ***
Resource  ../resources/keywords.robot
Resource  ../resources/locators.robot

*** Test Cases ***

Validate user can checkout page
    Open the Browser with URL
    Fill the login page details    ${valid_username}    ${valid_password}
    Click on Item to Add to Cart Button
    Click On Cart Icon
    Verify Cart Item Is Present On The Cart Page
    Click On Checkout Button
    Fill The Checkout Form
    Click On Continue Button From Check Out Page
    Click On Finish Button
    Verify Order Placed Successfully
