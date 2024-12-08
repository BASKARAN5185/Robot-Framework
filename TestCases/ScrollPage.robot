*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${TITLE}    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!

*** Test Cases ***
Open Flipkart and Verify Title

    Open Browser    https://www.flipkart.com    chrome
    maximize browser window
    set browser implicit wait    20
    set selenium speed    3
    title should be    ${TITLE}
    click element    xpath=//span[text()='Mobiles & Tablets']     #click text
    Execute JavaScript    window.scrollBy(0, 500)
    # Scroll to the bottom
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    # Scroll to the top
    Execute JavaScript    window.scrollTo(0, 0)
    ${pocomobile}=    scroll element into view     class:iW697U
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight    ${pocomobile}    

