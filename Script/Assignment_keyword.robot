*** Settings ***
Library    AppiumLibrary
Resource    ${CURDIR}/Assignment_variable.robot


*** Keywords ***
Open Setting Application
    Open Application    ${remote_url}    
    ...    platformName=${platformName}    
    ...    platformVersion=${platformVersion}    
    ...    DeviceName=${deviceName}    
    ...    automationName=UIAutomator2   
    ...    newCommandTimeout=2500     
    ...    appPackage=${appPackage}    
    ...    appActivity=${appActivity}
    Wait Until Page Contains    Settings

Search Input Text
    [Arguments]    ${searchtext}    ${locator_search}
    Wait Until Element Is Visible    ${locator_search}
    Tap    ${locator_search}
    Input Text    ${locator_search}    ${searchtext}


Click Result Search
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Tap    ${locator}

Vertifly Airplane Mode
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    15
    ${txt}=    Get Text    ${locator}
    Should Be Equal As Strings    ${txt}    Airplane mode is on

Click Airplane mode Button
    Wait Until Element Is Visible    ${locator_network_page}    15
    Tap   ${locator_network_page}
    Wait Until Element Is Visible    ${locator_network_layout}    15
    Tap    ${locator_airplanemode_button}

Click Battery Percentage Button
    Wait Until Element Is Visible    ${locator_battery_page}    15
    Tap    ${locator_battery_page}
    Wait Until Element Is Visible    ${locator_battery_layout}    15
    Tap    ${locator_battery_percentage_button}

Return to setting
    [Arguments]    ${int}
    FOR  ${i}  IN RANGE    ${int}
        Wait Until Element Is Visible    ${locator_back_button_navigate}    15
        Click Element    ${locator_back_button_navigate}
    END
        






    