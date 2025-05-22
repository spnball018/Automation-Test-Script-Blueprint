*** Settings ***
Resource    ../../import.resource
Resource    ../locators/virtual_site_visit_locators.robot

*** Keywords ***
Login To Krungsri iPro
    [Arguments]    ${username}    ${password}    ${role}=Tele RM
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${USERNAME_FIELD}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Password    ${PASSWORD_FIELD}    ${password}
    Click Element    ${LOGIN_BUTTON}
    
    # Select role
    Wait Until Element Is Visible    ${ROLE_SELECTOR_BUTTON}
    Click Element    ${ROLE_SELECTOR_BUTTON}
    Wait Until Element Is Visible    ${TELE_RM_OPTION}
    Click Element    ${TELE_RM_OPTION}
    Wait Until Element Is Enabled    ${CONFIRM_ROLE_BUTTON}
    Click Element    ${CONFIRM_ROLE_BUTTON}
    
    # Verify dashboard loaded
    Wait Until Page Contains    Dashboard

Select Hot Lead With Current Agent
    # Find and click on a row with "Hot Lead" status
    Wait Until Page Contains Element    ${HOT_LEAD_STATUS}
    ${count}=    Get Element Count    ${HOT_LEAD_STATUS}
    IF    ${count} > 0
        Click Element    ${HOT_LEAD_ROW}
    ELSE
        Fail    No Hot Lead entries found
    END
    
    # Verify lead details panel opens
    Wait Until Page Contains Element    ${VIRTUAL_SITE_VISIT_LINK}

Navigate To Virtual Site Visit
    Wait Until Element Is Visible    ${VIRTUAL_SITE_VISIT_LINK}
    Click Element    ${VIRTUAL_SITE_VISIT_LINK}
    
    # Wait for Virtual Site Visit page to load
    Wait Until Page Contains    Virtual Site Visit    timeout=10s

Click Create New Appointment Button
    Wait Until Element Is Visible    ${CREATE_NEW_APPOINTMENT_BUTTON}
    Click Element    ${CREATE_NEW_APPOINTMENT_BUTTON}
    
    # Verify popup appears
    Wait Until Element Is Visible    ${APPOINTMENT_POPUP}
    Wait Until Page Contains Element    ${APPOINTMENT_POPUP_TITLE}