*** Settings ***
Resource  ../resources/keywords.robot
Resource  ../resources/locators.robot

*** Test Cases ***

Validate successful Login
    Open the Browser with URL
    Fill the login page details    ${valid_username}    ${valid_password}
    Sleep  5s
    Click on logout

Invalid Login
    [Template]    Login With Invalid User
    ${valid_username}    ${invalid_password}    ${error_message}
    ${invalid_username}    ${valid_password}    ${error_message}
    ${invalid_username}    ${invalid_password}    ${error_message}
    ${empty_username}    ${valid_password}    ${empty_username_error_message}
    ${valid_username}    ${specialchar_password}    ${error_message}
    ${valid_username_with_diff_case}    ${valid_password}    ${error_message}
    ${valid_username_with_traling_space}    ${valid_password}${space}    ${empty_username_error_message}
    ${space}${valid_username}${space}    ${space}${valid_password}${space}    ${error_message}
    ${long_username}    ${valid_password}    ${error_message}
    ${sql_injection_username}    ${valid_password}    ${error_message}
    ${js_injection_username}    ${valid_password}    ${error_message}
    ${locked_out_user}    ${valid_password}    ${user_locked_out_error_message}
