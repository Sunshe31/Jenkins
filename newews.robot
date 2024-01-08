*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py

*** Test Cases ***
Browser should be opened
    Open Browser    https://www.flipkart.com/    chrome
    Maximize Browser Window
    Input Text    ${searchproduct}    stationery
    Sleep    4
    SeleniumLibrary.Press Keys    ${searchproduct}    ENTER
    Get Window Handles
    Wait Until Page Contains Element    ${next_product}
    SeleniumLibrary.Click Element    ${next_product}
    Switch Window    NEW
    Sleep    5
    Execute Javascript    document.body.style.zoom="95%"
    Set Window Size    1200    800   
    Wait Until Element Is Visible    ${addtocart}
    SeleniumLibrary.Click Element    ${addtocart}
    Maximize Browser Window
    Sleep    2
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)  
    Sleep    5
    
    # ${getele}    SeleniumLibrary.Get Text    ${validate}
    # Log    ${getele}

    Sleep    5
    SeleniumLibrary.Click Element    ${remove}

