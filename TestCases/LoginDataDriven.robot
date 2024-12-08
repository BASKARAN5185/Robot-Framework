*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/LoginResource.robot

Suite Setup    open the browser
Suite Teardown  close the browser

*** Test Cases ***       username        password
validuser invalidpass    Admin           admin123

*** Keywords ***
invalidate the loginpage
    [Arguments]    ${username}    ${password}
    enter the username    ${username}
    entre the password    ${password}
    click the login button
    invalidate the page