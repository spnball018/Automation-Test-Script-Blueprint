*** Variables ***
# Login Page
${USERNAME_FIELD}    input[type="text"]
${PASSWORD_FIELD}    input[type="password"]
${LOGIN_BUTTON}      button:nth-of-type(1)

# Role Selection
${ROLE_SELECTOR_BUTTON}    \#btn-role-select
${TELE_RM_OPTION}          mat-option:nth-child(1)
${CONFIRM_ROLE_BUTTON}     \#btn-confirm

# Dashboard Page
${HOT_LEAD_STATUS}          .status-hot-lead
${HOT_LEAD_ROW}             .row.ng-star-inserted:has(.status-hot-lead)

# Lead Detail Panel
${VIRTUAL_SITE_VISIT_LINK}  .c-video-cam-icon

# Virtual Site Visit Page
${CREATE_NEW_APPOINTMENT_BUTTON}    button:contains("Create New Appointment")
${APPOINTMENT_POPUP}               div.mat-dialog-container
${APPOINTMENT_POPUP_TITLE}         h2:contains("Create New Appointment")