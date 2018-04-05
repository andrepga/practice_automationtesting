*** Variables ***
# Configuration
${BROSER} = ff
${BASE_URL} =  http://practice.automationtesting.in/my-account/
${LOGIN_URL} =  http://practice.automationtesting.in/


# Input Data
&{REGISTRATION_INVALID_EMAIL}  Email=test.test  Password=#BLANK  ExpectedErrorMessage=Error: Please provide a valid email address.
&{REGISTRATION_EMPTY_EMAIL_PASSWORD}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Error: Please provide a valid email address.
&{REGISTRATION_EMPTY_EMAIL}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Error: Please provide a valid email address.
&{REGISTRATION_EMPTY_PASSWORD}  Email=test@test.com.br  Password=#BLANK  ExpectedErrorMessage=Error: Please enter an account password.
&{REGISTRATION_EMAIL_AlREADY_REGISTER}  Email=test@test.com  Password=123456  ExpectedErrorMessage=Error: An account is already registered with your email address. Please login.
