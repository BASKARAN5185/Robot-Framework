*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${TITLE}    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!

*** Test Cases ***
Open Flipkart and Verify Title

    Open Browser    https://www.flipkart.com    chrome
    maximize browser window
    set selenium speed    3
    title should be    ${TITLE}
    click element    xpath=//span[text()='Mobiles & Tablets']     #click text
    Close Browser
