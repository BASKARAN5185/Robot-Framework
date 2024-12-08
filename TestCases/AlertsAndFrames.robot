*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Alerts and Frame Handles

    open browser    https://www.hyrtutorials.com/p/alertsdemo.html    chrome
    maximize browser window
    set selenium speed    3
    click element    id:confirmBox
    handle alert    ACCEPT
    click element    id:confirmBox
    handle alert    DISMISS
    log to console    success
    click element    id:confirmBox
    handle alert    ACCEPT
    log to console    success







*** Keywords ***
