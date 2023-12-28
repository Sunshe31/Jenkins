*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***
${baseUrl}    https://the-internet.herokuapp.com
${header}    Content-type=application/json


*** Keywords ***
Open the Browser 
    Open Browser    https://the-internet.herokuapp.com/key_presses?
    Maximize Browser Window
    Set Selenium Speed    1s
Pressing the Keys
    Press Keys    //input[@id="target"]    ENTER
    Press Keys    //input[@id="target"]    TAB
    Press Keys    //input[@id="target"]    ALT
    Press Keys    //input[@id="target"]    DELETE
    Press Keys    //input[@id="target"]    SHIFT
    Press Keys    //input[@id="target"]    CTRL
    Press Keys    //input[@id="target"]    SPACE

API request
    Create Session    Update    ${baseUrl}
    ${create}    Create Dictionary    Content-type=application/json
    ${update}    Update Session    Update    json=${header}
    ${response}    GET On Session    Update    /key_presses?
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text}


*** Test Cases ***
Update
    Open the Browser
    Pressing the Keys
    API request
    