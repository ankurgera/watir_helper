require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Radio helper specs" do
  
  it "Should test radio helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://codepad.org/")
    maximize_browser(browser)
    click_radio_button(browser, "value", "C++")
    puts is_radio_button_checked?(browser, "value", "C++")
    clear_radio_button(browser, "value", "C++")
    flash_radio_button(browser, "value", "C++")
    puts exists_radio_button?(browser, "value", "C++")
    close_browser(browser)
  end

end