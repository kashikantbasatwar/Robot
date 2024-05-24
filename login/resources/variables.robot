*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${base_url}      https://www.saucedemo.com/
${browser_name}      Chrome

${valid_username}     standard_user
${valid_password}       secret_sauce
${invalid_username}     standard
${invalid_password}     secret_s
${empty_username}
${empty_password}
${specialchar_password}     standard_user@
${valid_username_with_diff_case}     STANDARD_USER
${valid_username_with_traling_space}     standard_user  ${space}
${long_username}=    Generate Random String    256
${sql_injection_username}     ' OR '1'='1
${js_injection_username}     <script>alert('test')</script>
${locked_out_user}    locked_out_user
${error_message}    Epic sadface: Username and password do not match any user in this service
${empty_username_error_message}    Epic sadface: Username is required
${empty_password_error_message}    Epic sadface: Password is required
${user_locked_out_error_message}    Epic sadface: Sorry, this user has been locked out.