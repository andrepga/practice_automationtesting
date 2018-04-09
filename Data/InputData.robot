*** Variables ***
# Configuration
${BROWSER} =  ff
${BASE_URL} =  http://practice.automationtesting.in/
${LOGIN_URL} =  http://practice.automationtesting.in/my-account/
# Input Data
&{REGISTRATION_INVALID_EMAIL}  Email=test@be  Password=#BLANK  ExpectedErrorMessage=Error: Please provide a valid email address.
&{REGISTRATION_EMPTY_EMAIL_PASSWORD}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Error: Please provide a valid email address.
&{REGISTRATION_EMPTY_EMAIL}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Error: Please provide a valid email address.
&{REGISTRATION_EMPTY_PASSWORD}  Email=test@test.com.br  Password=#BLANK  ExpectedErrorMessage=Error: Please enter an account password.
&{REGISTRATION_EMAIL_REGISTER_EMPTY_PASSWORD}  Email=test@test.com  Password=#BLANK  ExpectedErrorMessage=Error: An account is already registered with your email address. Please login.
