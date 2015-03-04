require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Button helper specs" do
  
  it "Should test button helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://www.google.com/")
    maximize_browser(browser)
    click_button(browser, "name","btnG")
    goto_page(browser, "http://www.google.com/")
    maximize_browser(browser)
    click_button_with_popup(browser, "name","btnG")
    goto_page(browser, "http://www.google.com/")
    maximize_browser(browser)
    double_click_button(browser, "name","btnG")
    goto_page(browser, "http://www.google.com/")
    maximize_browser(browser)
    double_click_button_with_popup(browser, "name","btnG")
    goto_page(browser, "http://www.google.com/")
    maximize_browser(browser)
    flash_button(browser, "name","btnG")
    puts exists_button?(browser, "name","btnG")
    close_browser(browser)
  end

end