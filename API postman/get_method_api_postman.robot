*** Settings ***
Library    RequestsLibrary

*** Variables ***
${baseUrl}    https://simple-books-api.glitch.me
${HEADERS}    Content-Type=application/json

*** Test Cases ***
Get User Details
    Create Session    apiSession    ${baseUrl}
    ${headers}    Create Dictionary    Content-Type=application/json
    ${response}    GET On Session    apiSession    /status    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text}

