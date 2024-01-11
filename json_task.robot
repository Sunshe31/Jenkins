*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary

*** Test Cases ***
Json file update 
    ${load}    Load Json From File    json_task.json
    ${json}    Get Value From Json    ${load}    name
    ${replace}    Update Value To Json    ${load}    name    c
    Dump Json To File    json_task.json    ${replace}

    
Using for loop

    FOR    ${key}    IN RANGE    1    5
        ${load}    Load Json From File    json_task.json
        ${jsonkey}    Set Variable    name${key}
        ${json}    Get Value From Json    ${load}    ${jsonkey}
        ${up}    Update Value To Json   ${load}    ${jsonkey}    ${key}
        Log    ${up}
        Dump Json To File    json_task.json    ${up}
    END

Get name 3 Value
    ${load}    Load Json From File    json_task.json
    ${json}    Get Value From Json    ${load}    name3
    Log    ${json}
