*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${input}    a,b,c,d
${list}    a
${list1}    b


*** Test Cases ***
My tc
    ${list}    Create List    ${input}
    Log    ${list}

My tc1
    ${array}    Convert To List    ${list}
    ${array1}    Convert To List    ${list1}
    ${con}    Catenate    ${array}    ${array1}
    Log    ${con}

My tc2
    ${a}    Set Variable    a
    ${b}    Set Variable    b
    ${output}    Catenate    [${a}]    [${b}]
    Log    ${output}
