*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PDF}    C:\\Users\\Archimedis Digital\\Robot Framework\\Jenkins\\newpdf01.pdf
${WEBPAGE}    https://www.saucedemo.com/
${BROWSER}    chrome

*** Keywords ***
keyword
    Open Browser    ${WEBPAGE}    ${BROWSER}
    Maximize Browser Window

*** Test Cases ***
AutomateWithPDF
    keyword
    ${set}     Execute JavaScript    window.open('${PDF}')
    ${dict}     Execute Javascript    return document.body.innerText    #getting text from pdf
    Log    ${dict}

    ${pdftext}    Set Variable    ${dict}        #1 defines as key 
    Log    ${pdftext}

    FOR    ${counter}    IN RANGE    0    3
    ${username}    Set Variable    ${pdftext.split('\n')[${counter}]}
    ${password}    Set Variable    ${pdftext.split('\n')[${counter}]}
    
    
    Log     ${username}
    Log     ${password}

    Press Keys    //input[@placeholder="Username"]    ${username}

    Input Password    //input[@placeholder="Password"]    ${password}
    Click Button    //input[@id="login-button"]
    Execute JavaScript    window.open('https://www.saucedemo.com/')
    Sleep    5
    # Switch Window    NEW   

    
    END