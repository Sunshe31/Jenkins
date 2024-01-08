*** Settings ***
Library    RequestsLibrary
Library    String

*** Variables ***
${baseUrl}    https://jmeter.apache.org
${header}    Content-Type=application/json
${substring}    download

*** Test Cases ***
Get A Particular Word from Url
    Create Session    mysession    ${baseUrl}
    ${response}    GET On Session    mysession    /download_jmeter.cgi    ${header}

    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text} 

    ${words}    Get Substring    ${substring}    0
    Log    ${words}