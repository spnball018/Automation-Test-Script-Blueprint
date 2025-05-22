*** Settings ***
Documentation     Test case for creating a new appointment in Krungsri iPro system
...               Case ID: ICNA001
...               Reference: [iPro] Create New Appointment (UI): BIZLOAN-282
...
...               This test verifies that a user with Tele RM role can click on
...               the Create New Appointment button and that the system displays
...               the Create New Appointment popup.

Resource          ../../keywords/web/common.robot
Resource          ../../keywords/web/pages/ipro_page.robot

Suite Setup       Setup Browser
Test Setup        Login With Tele RM Role
Test Teardown     Close All Browsers

*** Variables ***
${DATA_FILE}      ipro_data.yaml

*** Test Cases ***
User Clicks On Create New Appointment
    [Documentation]    Verify that user can click on Create New Appointment button
    ...                and the system displays Create New Appointment popup.
    [Tags]    regression    appointment    ICNA001    BIZLOAN-282
    
    # Navigate to Hot Lead with current agent
    Navigate To Hot Lead    ${TEST_DATA}[agent][name]
    
    # Navigate to Virtual Site Visit
    Navigate To Virtual Site Visit
    
    # Click Create New Appointment button
    Click Create New Appointment
    
    # Verify that Create New Appointment popup is displayed
    Verify Appointment Popup Is Displayed

*** Keywords ***
Login With Tele RM Role
    ${TEST_DATA}=    Load Test Data    ${DATA_FILE}
    Set Test Variable    ${TEST_DATA}
    Login To iPro    ${TEST_DATA}[login][username]    ${TEST_DATA}[login][password]    ${TEST_DATA}[login][role]