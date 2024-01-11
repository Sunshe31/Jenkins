*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    https://www.browserstack.com/docs/automate/selenium/handle-permission-pop-ups#camera-and-microphone-pop-ups
${scrolling}    //th[contains(text(),'Description')]
${mouse}    //h1[@id="handle-pop-ups-permissions-and-notifications"]
${scroll}    //button[@onclick="showFB('Yes')"]
${scroll1}    //h1[@id="handle-pop-ups-permissions-and-notifications"]
${mou}    (//a[@title="Sign In"])[1]
${chrome}    chrome

*** Test Cases ***
Example Test
    Open Browser    ${browser}    ${chrome}
    Maximize Browser Window
    Sleep    2
    Mouse Over    ${mouse}
    Scroll Element Into View    ${scroll}
    Sleep    2
    Scroll Element Into View    ${scroll1}
    Sleep    2
    Mouse Over    ${mou}
    Scroll Element Into View    ${scrolling}
    