*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Save As Example
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Input Text    //textarea[@id="APjFqb"]    Images
    Press Keys    //textarea[@id="APjFqb"]    ENTER
    Sleep    2   
    Click Element    (//span[@class="bmaJhd iJddsb"])[2] 
   
    Sleep    3
    Press Keys    //body    CTRL+ALT+S
    # Open Context Menu    (//img[@jsname="Q4LuWd"])[1]
    Sleep    20
    Press Keys    //body    ESC
    Sleep    5