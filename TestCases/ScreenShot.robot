*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
swiggy Screen Shot

       open browser    https://www.swiggy.com/    chrome
       maximize browser window
       set selenium speed    2
       capture page screenshot    C:/Users/xmedia/PycharmProjects/RobotFramework/Swiggy homepage Scrrenshot.png
       capture element screenshot    //a[@title='Swiggy']    C:/Users/xmedia/PycharmProjects/RobotFramework/Swiggy Logo.png
       capture page screenshot     C:/Users/xmedia/PycharmProjects/RobotFramework/homepage .png
       capture element screenshot    class:sc-bXCLTC erbfWI    briyani.png








*** Keywords ***
