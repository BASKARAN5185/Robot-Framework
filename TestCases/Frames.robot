*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
Handle Frames

    open browser    https://www.hyrtutorials.com/p/frames-practice.html#google_vignette    chrome
    set selenium speed    3
    scroll element into view   class:frmTextBox
    select frame    id:frm1
    click element    id:selectnav2
    scroll element into view   class:inp
    unselect frame


    select frame    id:frm2
    click element    id:selectnav1
    unselect frame
*** Keywords ***

