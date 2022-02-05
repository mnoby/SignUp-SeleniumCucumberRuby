@SignUpAmazon
Feature: Sign Up to Amazon Website

@ValidDataSignUp
Scenario Outline: User want to Sign Up to Amazon with Valid Data
Given User open amazon.com
#And User move the cursor over the Hello, Sign in Account & List Button
And User Click Start Here
Then User input name "<name>"
And User input email "<email>"
And User input password "<password>" and reEnter the password
Then User click Create Your Amazon Account
Examples:
| name          |email                     | password          |   
| input_your_name |input_your_valid_email   | Automation2022    |

@InvalidDataSignUp @UsingRegisteredEmail
Scenario Outline: User want to sign Up to Amazon Using an Email Addres that already Registered in Amazon.com
Given User open amazon.com
#And User move the cursor over the Hello, Sign in Account & List Button
And User Click Start Here
Then User input name "<name>"
And User input email "<email>"
And User input password "<password>" and reEnter the password
Then User click Create Your Amazon Account
Examples:
| name          |email                     | password          |   
| input_your_name |input_your_registered_email     | Automation2022    |

@InvalidDataSignUp @UsingLessThan6CharPass
Scenario Outline: User want to Sign Up to Amazon Using Password that the length less than 6 characters
Given User open amazon.com
#And User move the cursor over the Hello, Sign in Account & List Button
And User Click Start Here
Then User input name "<name>"
And User input email "<email>"
And User input password "<password>" and reEnter the password
Then User click Create Your Amazon Account
Examples:
| name          |email                     | password          |   
| input_your_name |input_your_valid_email   | Auto              |



