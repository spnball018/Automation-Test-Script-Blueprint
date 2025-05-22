*** Variables ***
# Login Page Locators
${LOGIN_USERNAME_FIELD}       xpath=//input[@id='username' or @name='username']
${LOGIN_PASSWORD_FIELD}       xpath=//input[@id='password' or @name='password' or @type='password']
${LOGIN_BUTTON}               xpath=//button[contains(text(), 'Sign in') or contains(@class, 'login') or contains(@id, 'login')]
${ROLE_DROPDOWN}              xpath=//select[@id='role' or contains(@id, 'roleSelector')] 

# Dashboard Locators
${HOT_LEAD_STATUS_FILTER}     xpath=//div[contains(text(), 'Hot Lead') or contains(@class, 'hot-lead')]
${LEAD_ROW_BY_AGENT}          xpath=//tr[td[contains(text(), '{agent}')]]
${LEAD_ITEM}                  xpath=//div[contains(@class, 'lead-item') and contains(., '{agent}')]

# Side Menu Locators
${SIDEBAR_VIRTUAL_VISIT}      xpath=//a[contains(text(), 'Virtual Site Visit') or contains(@href, 'virtual-site-visit')]

# Appointment Locators
${CREATE_APPOINTMENT_BUTTON}  xpath=//button[contains(text(), 'Create New Appointment') or contains(@id, 'create-appointment')]
${APPOINTMENT_POPUP_TITLE}    xpath=//div[contains(@class, 'modal-title') and contains(text(), 'Create New Appointment')]