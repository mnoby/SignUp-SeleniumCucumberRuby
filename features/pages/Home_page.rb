
include Test::Unit::Assertions
$hello_signIn = 'nav-link-accountList' #id
$start_here_link = 'nav-a' #class
$start_here_text = 'Start here.' #link_text
$field_name = 'customerName' #name
$field_email = 'email'  #name
$field_pass = 'password' #name
$field_passCheck = 'passwordCheck' #name
$signUp_btn = 'continue' #id
$solvePuzzle_btn = 'home_children_button' #id
$captcha_btn = ''
$alert_exist = '//*[@id="authportal-main-section"]/div[2]/div/div[1]/div/div/div/p' #xpath
$wait = Selenium::WebDriver::Wait.new(:timeout => 10)
$alert_pass = 'auth-password-invalid-password-alert' #class

def mouse_hover()
    helloElement = $browser.find_element(:id,$hello_signIn)
   # $browser.action.move_to(helloElement).perform
    $browser.action.move_to(helloElement).perform if $wait.until {
        $browser.find_element(:id, $hello_signIn).displayed?
     }
end

def click_StartHere()
        $browser.find_element(:link_text,$start_here_text).click if $wait.until {
        $browser.find_element(:class, $start_here_link).displayed?
     }
end

def input_name(name)
   el = $browser.find_element(:name,$field_name).send_keys(name)
   el if $wait.until{
       $browser.find_element(:name,$field_name).enabled?
   }
    # $browser.find_element(:name,$field_name).send_keys(name) if wait.until{
    #     $browser.find_element(:name,$field_email).displayed?
    # }
end

def input_email(email)
    $browser.find_element(:name,$field_email).send_keys(email)
    $storeEmail = email
end

def input_pass_and_Check(pass)
    $browser.find_element(:name,$field_pass).send_keys(pass)
    $browser.find_element(:name,$field_passCheck).send_keys(pass)
    $pass_length = pass.length
end

def click_continue()
    $browser.find_element(:id,$signUp_btn).click
end

def email_already_exist()
    alertElement = $browser.find_element(:class,$alert_exist)
    #assert(alertElement.text.include?("Email address already in use"))
end

def validation()
    if $pass_length < 6
        alertPass = $browser.find_element(:id,$alert_pass).text
        puts alertPass
        assert(alertPass.include?("Passwords must be at least 6 characters."))
    elsif $storeEmail == "change_to_your_new_email"
        print "Automation Sign Up cannot be continued because the next step using CAPTCHA or solving Puzzle. Automation Restricted"
     else 
        alertElement = $browser.find_element(:xpath,$alert_exist).text
        #puts alertElement
        assert(alertElement.include?("You indicated you're a new customer, but an account already exists with the email address input_your_registered_email"))
     end
    
    
end
    
