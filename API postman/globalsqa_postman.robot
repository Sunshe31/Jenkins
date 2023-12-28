*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary


*** Variables ***
@{a}    (//a[contains (text(), 'Home')])[1]    (//a[contains (text(), 'CheatSheets')])[1]   

${baseUrl}    https://www.globalsqa.com/
${HEADERS}    Content-Type=application/json

*** Keywords ***
Global SQA CheatSheets 
    Open Browser    https://www.globalsqa.com/cheatsheets/
    # Maximize Browser Window
    FOR    ${element}    IN    @{a}
        Wait Until Page Contains Element    ${element}
        Click Element    ${element}
    END    
    Mouse Over    (//a[@class="no_border"])[1]    
    Mouse Over    (//a[@class="no_border"])[2]
    Close Browser

API request    
    Create Session    mysession    ${baseUrl}
    ${post}    POST On Session    mysession    /cheatsheets    json=${HEADERS}     
    Should Be Equal As Numbers    ${post.status_code}    200
    Log    ${post.text}   


*** Test Cases ***
Global SQA
    
    Global SQA CheatSheets
    API request