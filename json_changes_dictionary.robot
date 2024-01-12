*** Settings ***
Library    RPA.JSON
Library    DateTime
Library    Collections
Library    JSONLibrary

*** Test Cases ***
Json Change given name and Id once updated    

    ${file_path}    RPA.JSON.Load Json From File    json_changes_dictionary.json
    ${get_name}    RPA.JSON.Get Value From Json    ${file_path}    name
    ${get_id}      RPA.JSON.Get Value From Json    ${file_path}    id
    ${get_date}    RPA.JSON.Get Value From Json    ${file_path}    date

    ${create}      Create Dictionary    name=${get_name}    id=${get_id}    date=${get_date}

    ${updated_name}    Set Variable    Sunshe
    ${updated_id}      Set Variable    2
    ${datee}      Get Current Date
    ${updated_date}    Set Variable    ${datee}

    ${updated_json}    Create Dictionary    name=${updated_name}    id=${updated_id}    date=${updated_date}
    
    Set To Dictionary    ${create}    name=${updated_name}
    Set To Dictionary    ${create}    id=${updated_id}
    Set To Dictionary    ${create}    date=${updated_date}
    ${json_content_updated}    Evaluate    json.dumps(${updated_json})
    Save JSON to file    ${json_content_updated}    json_changes_dictionary.json