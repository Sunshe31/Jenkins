*** Settings ***
Library    RequestsLibrary

*** Variables ***
${baseUrl}       https://reqres.in/api
${type}        Content-Type=application/json


*** Test Cases ***
Delete api
    Create Session    mysession    ${baseUrl}
    ${delete_response}    Delete Request    mysession    /user?id=2    ${type}
    Should Be Equal As Numbers    ${delete_response.status_code}    204
    Log    ${delete_response.text}

