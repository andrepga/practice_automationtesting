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
&{LOGIN_INVALID_USER}  User=test987  Password=123456  ExpectedErrorMessage=ERROR: Invalid username. Lost your password?
&{LOGIN_INVALID_PASSWORD}  User=test  Password=123456  ExpectedErrorMessage=ERROR: The password you entered for the username test is incorrect. Lost your password?
&{LOGIN_EMPTY_PASSWORD}  User=test  Password=#BLANK  ExpectedErrorMessage=Error: Password is required.
&{LOGIN_EMPTY_USERNAME}  User=#BLANK  Password=123456  ExpectedErrorMessage=Error: Username is required.
&{LOGIN_EMPTY_USERNAME_PASSWORD}  User=#BLANK  Password=BLANK  ExpectedErrorMessage=Error: Username is required.