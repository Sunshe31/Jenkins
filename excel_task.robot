*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Upload File and Extract Table Data
    Open Browser    https://the-internet.herokuapp.com/upload    chrome
    Maximize Browser Window
    ${set}     Execute JavaScript    window.get('robotframeworktableexcel.xlsx')
    ${dict}     Execute Javascript    return document.body.Text    #getting text from excel
    ${dict}    
    Log    ${dict}

    ${exc}    Set Variable    ${dict}        #1 defines as key 
    Log    ${exc}


    FOR    ${element}    IN RANGE    1    5
        ${username}=    Get Table Cell    ${set}    ${element}    1
        ${password}=    Get Table Cell    ${set}    ${element}    2
        Log    ${username}    ${password}
    END

    Close Browser
