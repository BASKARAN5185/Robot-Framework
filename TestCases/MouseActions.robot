*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mouse Actions Locations

     open browser    https://www.flipkart.com/    chrome
     maximize browser window
     set selenium speed    2
     ${"Searchbox"}  set variable    name:q
     input text    ${"Searchbox"}    iphone 16 pro max
     click element    class:_2iLD__
     sleep    1
     click element    class:XqNaEv
     element should be visible    class:XqNaEv
     open context menu    class:KzDlHZ               #right click Actions
     double click element      class:KzDlHZ    #Double Click
     switch window
     drag and drop    class:PYKUdo    class:PYKUdo           #draganddrop



