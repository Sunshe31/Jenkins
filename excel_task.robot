*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${excel}    C:\\Users\\Archimedis Digital\\Robot Framework\\robotframeworktableexcel.xlsx

*** Test Cases ***

My Test
    Open Browser    https://the-internet.herokuapp.com/upload    chrome
    Maximize Browser Window
    ${set}     Execute JavaScript    window.open('${excel}')
    ${dict}     Execute Javascript    return document.body.innerText    #getting text from pdf
    Log    ${dict}
    

    FOR    ${element}    IN RANGE    1    5
        ${username}=    Set Variable    ${dict}
        ${password}=    Set Variable    ${dict}
        
    END    

    Log    ${username}   
    Log    ${password}  







    
# Upload File and Extract Table Data
#     Open Browser    https://the-internet.herokuapp.com/upload    chrome
#     Maximize Browser Window
#     ${choose}    Choose File    //body    C:\\Users\\Archimedis Digital\\Robot Framework\\robotframeworktableexcel.xlsx
#     ${get}    Get Value    C:\\Users\\Archimedis Digital\\Robot Framework\\robotframeworktableexcel.xlsx
#     Log    ${get}
#     Click Element    id=file-submit

#     ${set}     Execute JavaScript    window.get('${excel}')
#     ${dict}     Execute Javascript    return document.body.Text    #getting text from excel

#     Log    ${dict}

#     ${exc}    Set Variable    ${dict}        #1 defines as key 
#     Log    ${exc}


#     FOR    ${element}    IN RANGE    1    5
#         ${username}=    Get Table Cell    TAB    ${element}    1
#         ${password}=    Get Table Cell    TAB    ${element}    2
#         Log    ${username}    ${password}
#     END


#     Close Browser

