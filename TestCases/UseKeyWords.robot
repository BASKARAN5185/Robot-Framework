*** Settings ***
Library    SeleniumLibrary
#  keywords    get from resource files
Resource    C:/Users/xmedia/PycharmProjects/RobotFramework/Resource/KeywordsResource.robot

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome
${username}    Admin
${password}      admin123


*** Test Cases ***
Open Url testcase 1

     LanchBrowser    ${url}    ${browser}
     log to console    browserlunch success
     # get the retrun value
     ${nameuser}=    sendusernameandpass    ${username}    ${password}
     log to console   ${nameuser}
     log      ${nameuser}


