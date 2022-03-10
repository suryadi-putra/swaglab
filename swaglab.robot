*** Settings ***
Library        SeleniumLibrary
Suite Setup      Open Browser        ${webURL}       ${BROWSERS}
Suite Teardown       Close Browser
Test Template       I login with invalid username and invalid password

*** Variables ***
${webURL}       https://www.saucedemo.com/
${BROWSERS}     chrome

*** Keywords ***
I login with invalid username and invalid password
    Maximize Browser Window
    [Arguments]         ${username}                            ${password}
    Input Text          //Input[@data-test="username"]         ${username}   
    Input Text          //Input[@id="password"]                ${password}
    Click Element       //Input[@id="login-button"]            
    Page Should Contain                                     Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Login with invalid username and password for user A         userA       passwordA
Login with invalid username and password for user B         userB       passwordB
Login with invalid username and password for user C         userC       passwordC


# I login with valid username and valid password

#     Maximize Browser Window
#     Input Text          //Input[@data-test="username"]         standard_user
#     Input Text          //Input[@id="password"]                secret_sauce
#     Click Element       //Input[@id="login-button"]            
#     Page Should Contain                                        Products
#     Sleep               2s