*** Settings ***
Library    SeleniumLibrary
Library    RPA.FTP

*** Test Cases ***
Choose the file and close the pop up Window
    Open Browser    https://the-internet.herokuapp.com/upload    chrome 
    Maximize Browser Window
    Wait Until Page Contains Element    //input[@id="file-upload"]
    Double Click Element    //input[@id="file-upload"]
    Capture Page Screenshot
    Press Keys    //input[@id="file-upload"]    ESC
    # Close
    Element Should Be Visible    //input[@id="file-submit"]
    Capture Page Screenshot
    Click Element    //input[@id="file-submit"]
    Capture Page Screenshot