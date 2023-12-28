*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://mail.google.com/mail
${user}    itsmeaishu3103@example.com
${pass}    Sunsh#123

*** Test Cases ***
Mail
    
    Create Session    Mail    ${BASE_URL}
    ${payload}    Create Dictionary    username=${user}    password=${pass}
    ${headers}    Create Dictionary    Content-Type=application/json
    ${response}    Post Request    Mail    /u/0/#inbox    json=${payload}    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    401
    Log    ${response.text}

