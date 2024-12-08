*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${TITLE}    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!

*** Test Cases ***
Open multiple browser window

    Open Browser    https://www.flipkart.com    chrome
    ${url} =    get location
    ${pageTitle}=    get title
    log to console    ${url}
    log to console    ${pageTitle}


    go to    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
    ${url1} =    get location
    ${pageTitle1}=    get title
    log to console    ${url1}
    log to console    ${pageTitle1}
    sleep    5

    go back



*** Keywords ***
