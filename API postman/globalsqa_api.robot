*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***
@{a}    (//a[contains (text(), 'Home')])[1]    (//a[contains (text(), 'CheatSheets')])[1]   

${baseUrl}    https://www.globalsqa.com/
${HEADERS}    Content-Type=application/json


*** Test Cases ***
Global SQA
    Create Session    mysession    ${baseUrl}
    ${ddict}    Create Dictionary    Content-Type=application/json
    ${post}    POST On Session    mysession    /cheatsheets    json=${HEADERS}     
    
    Open Browser    https://www.globalsqa.com/cheatsheets/
    # Maximize Browser Window
    FOR    ${element}    IN    @{a}
        Wait Until Page Contains Element    ${element}
        Click Element    ${element}
    END    
    Mouse Over    (//a[@class="no_border"])[1]    
    Mouse Over    (//a[@class="no_border"])[2]

    Should Be Equal As Numbers    ${post.status_code}    200
    Log    ${post.text}
