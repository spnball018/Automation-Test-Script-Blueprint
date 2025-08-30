*** Settings ***
Resource    ../../import.resource
Resource    ../locators/ipro_locators.robot

*** Keywords ***
Login To iPro
    [Arguments]    ${username}    ${password}    ${role}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${LOGIN_USERNAME_FIELD}    timeout=30s
    Input Text    ${LOGIN_USERNAME_FIELD}    ${username}
    Input Text    ${LOGIN_PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BUTTON}
    
    Wait Until Element Is Visible    ${ROLE_DROPDOWN}    timeout=30s
    Select From List By Label    ${ROLE_DROPDOWN}    ${role}
    
Navigate To Hot Lead
    [Arguments]    ${agent_name}
    Wait Until Element Is Visible    ${HOT_LEAD_STATUS_FILTER}    timeout=30s
    Click Element    ${HOT_LEAD_STATUS_FILTER}
    
    ${lead_row}=    Replace String    ${LEAD_ROW_BY_AGENT}    {agent}    ${agent_name}
    Wait Until Element Is Visible    ${lead_row}
    Click Element    ${lead_row}
    
Navigate To Virtual Site Visit
    Wait Until Element Is Visible    ${SIDEBAR_VIRTUAL_VISIT}    timeout=30s
    Click Element    ${SIDEBAR_VIRTUAL_VISIT}
    
Click Create New Appointment
    Wait Until Element Is Visible    ${CREATE_APPOINTMENT_BUTTON}    timeout=30s
    Click Element    ${CREATE_APPOINTMENT_BUTTON}
    
Verify Appointment Popup Is Displayed
    Wait Until Element Is Visible    ${APPOINTMENT_POPUP_TITLE}    timeout=20s
    Element Should Be Visible    ${APPOINTMENT_POPUP_TITLE}