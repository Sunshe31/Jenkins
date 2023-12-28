*** Settings ***
Library    RequestsLibrary

*** Variables ***
${baseUrl}    https://reqres.in/api
${HEADERS}    Content-Type=application/json

*** Test Cases ***
Create User
    ${data}    Create Dictionary    username=Sunshe    email=sunshe@gmail.com
    Create Session    apiSession    ${baseUrl}
    ${headers}    Create Dictionary    Content-Type=application/json
    ${response}    POST On Session    apiSession   /users     json=${data}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.text}