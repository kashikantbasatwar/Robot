*** Settings ***
Resource  ../resources/keywords.robot
Resource  ../resources/locators.robot




*** Variables ***
###    Login Page    ###
${username_text}        //*[@id="user-name"]
${password_text}        //*[@id="password"]
${login_button}    //*[@id="login-button"]
${burger_button}    //button[@id='react-burger-menu-btn']
${login_error_message}    css:h3
${missing_username_error_message}    /html/body/div[1]/div/div[2]/div[1]/div/div/form/div[3]/h3
${missing_password_error_message}   /html/body/div[1]/div/div[2]/div[1]/div/div/form/div[3]/h3
${logout_button}        //*[@id="logout_sidebar_link"]
${add_to_cart}    //button[contains(.,'Add to cart')]
${product_list}    //div[contains(@class,'inventory_item_name')]
${cart_item}    //div[@id='cart_contents_container']/div/div/div[3]
${cart_icon}    //div[@id='shopping_cart_container']/a

${first_name_checkout_page}    firstname
${last_name_checkout_page}    lastname
${zipcode_checkout_page}    123456
${first_name}    //input[@id='first-name']
${last_name}    //input[@id='last-name']
${zipcode}    //input[@id='postal-code']
${checkout_button}    //button[@id='checkout']
${finish_button}    //button[@id='finish']
${continue_button}    //input[@id='continue']
${order_success_message}    Thank you for your order!
${thanks_message}    //h2[contains(.,'Thank you for your order!')]

