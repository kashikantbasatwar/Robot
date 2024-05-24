*** Settings ***
Resource  ../resources/keywords.robot
Resource  ../resources/locators.robot
Resource  ../resources/variables.robot
Library    SeleniumLibrary

*** Variables ***
${BROWSER}  chrome

*** Keywords ***

Open the Browser with URL
    Create Webdriver    ${browser_name}  /home/kashikant/PycharmProjects/py1/venv/login/Drivers/${browser_name}
    Go To       ${base_url}
    Maximize Browser Window

Close Browser Session
    Close Browser

Fill the login page details
    [Arguments]    ${username}    ${password}
    Input Text     ${username_text}       ${username}
    Input Text     ${password_text}       ${password}
    Click Button    ${login_button}

Login with valid user
    Open the Browser with URL
    Fill the login form    ${valid_username}    ${valid_password}

Click on logout
    Click Element    ${burger_button}
    Wait Until Element Is Visible    ${logout_button}
    Click Element    ${logout_button}

Login with invalid user
    [Arguments]    ${username}    ${password}    ${error_message}
    Open the Browser with URL
    Fill the login page details    ${username}    ${password}
    ${expected_error_message}    Get Text     ${login_error_message}
    Should Be Equal As Strings    ${expected_error_message}    ${error_message}
    Close Browser Session

Check Link Status
    [Arguments]    ${url}
    Create Session    mysession    ${base_url}
    ${response}=    Get Request    mysession    ${EMPTY}
    Should Be True    ${response.status_code} < 400    Link is broken: ${base_url}
    Delete All Sessions

Click on Item to Add to Cart Button
    [Documentation]    Clicks on the 'Add to Cart' button of the item.
    Click Element    xpath=${add_to_cart}

Verify cart items
    Click On Cart Icon
    ${total_products_in_cart}    Get Element Count    ${product_list}
    ${products_in_cart}    Add multiple product items in the cart
    Should Be Equal    ${products_in_cart}    ${total_products_in_cart}

Verify cart item is present on the cart page
    Element Should Be Visible    ${cart_item}

Click on Cart icon
    Click Element    ${cart_icon}

Click on checkout button
    Click Element    ${checkout_button}

 Fill the checkout form
    Input Text    ${first_name}    ${first_name_checkout_page}
    Input Text    ${last_name}    ${last_name_checkout_page}
    Input Text    ${zipcode}    ${zipcode_checkout_page}

Click on continue button from check out page
    Click Element    ${continue_button}

Click on Finish button
    Click Element    ${finish_button}

Verify order placed successfully
    ${actual_message}    Get Text    ${thanks_message}
    Should Be Equal As Strings    ${actual_message}    ${order_success_message}