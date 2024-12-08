*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Link Extract

    open browser    https://www.flipkart.com/    chrome
    maximize browser window
    sleep    5
    ${linkcount}=    get element count    Xpath://a
    log to console    ${linkcount}
    @{links}     create list

    FOR    ${i}    IN RANGE    1    ${linkcount}
        ${links}=    get text    xpath:(//a)[${i}]
        log to console    ${links}
    END




*** Keywords ***
