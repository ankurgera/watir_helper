require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Checkbox helper specs" do
  
  it "Should test checkbox helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://codepad.org/")
    maximize_browser(browser)
    click_checkbox(browser, "name", "private")
    puts is_checkbox_checked?(browser, "name", "private")
    clear_checkbox(browser, "name", "private")
    puts is_checkbox_checked?(browser, "name", "private")
    flash_checkbox(browser, "name", "private")
    puts exists_checkbox?(browser, "name", "private")
    close_browser(browser)
  end

end