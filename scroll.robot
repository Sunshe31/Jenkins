*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop

*** Variables ***
${browser}    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open
${chrome}    chrome
${scroll1}    //a[@title="Waits until the element ``locator`` disappears from the current page."]
${scroll2}    //a[@title="Adds a cookie to your current session."]
${scroll3}    //a[@title="Adds a cookie to your current session."]
${browser1}    https://www.w3schools.com/jsref/met_win_scrollby.asp
${mouseover}    //div[@class="notranslate"]
${scroll4}    //a[@href="jsref_type_conversion.asp"]
${scroll5}    //a[@href="default.asp"]
${mouseover1}    //div[@id="main"]
${scroll6}    //a[@href="//www.w3schools.com/w3css/default.asp"]

*** Test Cases ***
Scroll and inner Scroll
    Open Browser    ${browser}    ${chrome}
    Maximize Browser Window
    Scroll Element Into View    ${scroll1}
    Scroll Element Into View    ${scroll2}
    Sleep    2
    Scroll Element Into View    ${scroll3}
    Close Browser

    Open Browser    ${browser1}    ${chrome}
    Maximize Browser Window
    Mouse Over    ${mouseover}
    Scroll Element Into View    ${scroll4}
    Scroll Element Into View    ${scroll5}
    Mouse Over    ${mouseover1}
    Scroll Element Into View    ${scroll6}

    Open Browser    https://www.techlistic.com/2020/07/automation-testing-demo-websites.html#google_vignette    ${chrome}
    Maximize Browser Window
    