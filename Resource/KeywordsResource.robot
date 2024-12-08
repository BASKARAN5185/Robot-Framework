*** Settings ***
Library   SeleniumLibrary

*** Keywords ***
LanchBrowser                                    # This is keywords
     [Arguments]    ${Wed}    ${brw}            # [Arguments]  keyword  used for get value
     open browser    ${Wed}    ${brw}
     maximize browser window
     set browser implicit wait    15
     set selenium speed    2

SendUserNameAndPass
    [Arguments]   ${name}   ${pass}                   # [Arguments] ${name}   ${pass}  keyword of used for get value
     input text    //input[@placeholder='Username']    ${name}
     input text    //input[@placeholder='Password']    ${pass}
     click element    //button[contains(.,'Login')]
     element should be visible    class:oxd-userdropdown-name
     ${adminname} =    get text    class:oxd-userdropdown-name
     [Return]    ${adminname}                                # retrn the admin name