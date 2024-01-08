*** Settings ***
Library    SeleniumLibrary
Variables    abspath/xpath.py
Variables    abspath/data.py

*** Variables ***
@{size}    ${regular}    ${medium}    ${small}    
@{topics}    ${newlauch}    ${vegpizza}    ${nonvegpizza}    ${beverages}    ${garlic}    ${pizzamania}    ${valuecombo}    ${desserts}    ${gourmet}
@{icon}    ${order}    ${home}    ${deals}    ${menu}    ${everyday}    ${feedback} 

*** Test Cases ***
Dominos Pizza Web page to automate
    Open Browser    ${browserxpath}    ${browser}
    Maximize Browser Window
    Sleep    4
    Reload Page

    FOR    ${element}    IN    @{size}
        Click Element    ${drop}
        Wait Until Page Contains Element    ${element}
        Click Element    ${element}
    END

    Click Element    ${like}
    Click Button    ${add}
    Click Element    ${increase}
    Scroll Element Into View    ${checkout}
    Wait Until Page Contains Element    ${checkout}
    Click Button    ${checkout}
    Sleep    5
    Click Element    ${change}
    Wait Until Page Contains Element    ${locate}
    Sleep    5
    Input Text    ${locate}    ${place}
    Wait Until Page Contains Element    ${located}
    Click Element    ${located}
    Go Back

    FOR    ${element3}    IN    @{topics}
        Click Element    ${element3}
    END
    
    Click Element    ${reco}
    FOR    ${element4}    IN    @{icon}
        Sleep    5
        Click Element    ${home}
        Sleep    3
        Click Element    ${element4}
    END