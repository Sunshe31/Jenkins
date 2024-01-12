*** Settings ***
Library    RPA.JSON
Library    DateTime

*** Test Cases ***
Json Change given name and Id once updated    

    ${file_path}    Load Json From File    json_changes.json
    ${get_name}    Get Value From Json    ${file_path}    name
    ${update}    Update Value To Json    ${file_path}    name    Aishwarya
    Save JSON to file    ${update}    json_changes.json
    Log    ${update}

    ${get_id}    Get Value From Json    ${file_path}    id
    ${int}    Convert To Integer    2
    ${json}    Update value to JSON    ${file_path}    id     ${int}
    Save JSON to file    ${json}    json_changes.json
    Log    ${json}

    ${get_id}    Get value from JSON    ${file_path}    date
    ${current_date}    Get Current Date    
    ${update_date}    Update value to JSON    ${file_path}    date    ${current_date}
    Save JSON to file    ${update_date}    json_changes.json
    Log    ${update_date}

