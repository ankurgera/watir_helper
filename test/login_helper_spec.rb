require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Radio helper specs" do
  
  it "Should test radio helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "https://accounts.google.com/ServiceLogin?service=mail&continue=https://mail.google.com/mail/")
    maximize_browser(browser)
    login_using_button(browser, "id", "Email", "abc@gmail.com", "id", "Passwd", "xyz", "id", "signIn")
    puts verify_text?(browser, "The email or password you entered is incorrect")
    close_browser(browser)
  end

end