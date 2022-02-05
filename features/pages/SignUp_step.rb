require_relative '../support/screen_action.rb'

Given('User open amazon.com') do
  maximize_browser()
  open_url("https://www.amazon.com/")
  
end

# And ('User move the cursor over the Hello, Sign in Account & List Button') do
#   mouse_hover()
# end

And ('User Click Start Here') do
  click_StartHere()
end

Then('User input name {string}') do |name|
input_name(name)

end

And('User input email {string}') do |email|
input_email(email)

end

And('User input password {string} and reEnter the password') do |password|
input_pass_and_Check(password)

end


Then('User click Create Your Amazon Account') do 
  click_continue()
  validation()
  sleep(1)
end

