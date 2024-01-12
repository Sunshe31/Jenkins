*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
My Testcase
    Open Browser    https://www.saucedemo.com/   chrome    
    Sleep    1s
    Reload Page
    Maximize Browser Window