*** Settings ***
Documentation    Test case for creating new appointment in Krungsri iPro system
...              Test Case: ICNA001 - User clicks on Create New Appointment
...              BIZLOAN-282: [iPro] Create New Appointment (UI)
Resource         ${CURDIR}/../../keywords/web/pages/virtual_site_visit_page.robot
Suite Setup      Setup Environment
Suite Teardown   Close All Browsers
Test Teardown    Run Keyword If Test Failed    Capture Page Screenshot

*** Variables ***
${URL}                https://app-service-jao-dev.apps.ocp-test-bkk2.krungsri.net/web/dsl-dashboard
${USERNAME}           7N100342
${PASSWORD}           P@ssw0rd
${ROLE}               Tele RM

*** Test Cases ***
User Clicks On Create New Appointment
    [Documentation]    Verify that clicking on Create New Appointment displays the popup
    [Tags]            ICNA001    BIZLOAN-282    regression    ui
    
    # Step 1: Sign in to the system
    Login To Krungsri iPro    ${USERNAME}    ${PASSWORD}    ${ROLE}
    
    # Step 2: Click on a lead with status 'Hot Lead' where current agent matches the user
    Select Hot Lead With Current Agent
    
    # Step 3: Click Virtual Site Visit on side bar menu
    Navigate To Virtual Site Visit
    
    # Step 4: Click on Create New Appointment button
    Click Create New Appointment Button
    
    # Verify the popup appears as expected
    Page Should Contain    Create New Appointment
    
*** Keywords ***
Setup Environment
    # Setup Browser from common.robot
    Set Selenium Implicit Wait    10
    Set Selenium Timeout          30