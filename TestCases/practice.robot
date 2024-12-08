*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
${browser}    chrome
*** Test Cases ***
Practice tese

     open browser     ${url}   ${browser}
     maximize browser window
     set browser implicit wait    15     # browser implicit wait
     set selenium timeout    15     # Timeout 15 seconds
     wait until page contains    Student Registration Form    # timeout preoid is 5 sec
     set selenium speed    2      # execute code speed
     click element    name:gender     # click the element
     sleep    3    # sleep the code
     element should be enabled    name:gender     # validation in select
     scroll element into view    id:state        # scroll element into view
     select from list by label   id:state  Uttar Pradesh    # select dropdown button
     log to console   sucessfully



*** Keywords ***

