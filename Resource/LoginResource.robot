*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}
${Browser}

*** Keywords ***
open the browser
     open browser    ${url}   ${Browser}
     maximize browser window
     set browser implicit wait    15
close the browser
      close browser
enter the username
    [Arguments]     ${username}
    input text    (//input[@class='oxd-input oxd-input--active'])[1]    ${username}
entre the password
    [Arguments]     ${password}
    input text    (//input[@class='oxd-input oxd-input--active'])[2]    ${password}
click the login button
     click button    //button[contains(@class,'oxd-button oxd-button--medium')]
invalidate the page
     location should be    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
validate the login
     page should contain element    class:https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
