*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/Assignment_keyword.robot

*** Test Cases ***
Open Setting , Open Airplane Mode , Open-close Battery , Add thai Lauguage , return to setting
    Open Setting Application    
    Click Airplane mode Button
    Vertifly Airplane Mode    ${locator_network_text_wifi_status}
    Return To Setting    1
    Swipe    512    1904    555    924
    Click Battery Percentage Button
    Tap    ${locator_battery_percentage_button}
    Return to setting    1
    Swipe    538    2039    469    529
    Swipe    491    2030    525    308
    Tap    ${locator_system_page}
    Wait Until Element Is Visible    ${locator_system_layout}    15
    Tap    ${locator_language&input}
    Wait Until Element Is Visible    ${locator_language$input_layout}    15
    Tap    ${locator_language}
    Wait Until Element Is Visible    ${locator_languages_layout}    15
    Tap    ${locator_add_language}
    Wait Until Element Is Visible    ${locator_add_language_layout}    15
    Tap    ${locator_search_button_language_page}
    Wait Until Element Is Visible    ${locator_edit_text_language_page}    15
    Search Input Text    th    ${locator_edit_text_language_page}  
    Wait Until Element Is Visible    ${locator_thai_language_add}     
    Tap    ${locator_thai_language_add}
    Wait Until Element Is Visible    ${locator_thai_language}    15
    Return to setting    3
    Swipe    625    143    607    2030   
    Swipe    521    365    508    1991   
    Wait Until Page Contains    Settings