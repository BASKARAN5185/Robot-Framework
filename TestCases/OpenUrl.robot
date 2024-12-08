*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Open The FlipKart

     open browser    https://www.flipkart.com/    chrome
     maximize browser window
     ${"Searchbox"}  set variable    name:q
     input text    ${"Searchbox"}    iphone 16 pro max
     click element    class:_2iLD__
     sleep    3
     click element    class:XqNaEv
     element should be visible    class:XqNaEv
     sleep    5









