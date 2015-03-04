require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Div helper specs" do
  
  it "Should test div helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://codepad.org/")
    maximize_browser(browser)
    click_div(browser, "id", "editor")
    click_div_with_popup(browser, "id", "editor")
    double_click_div(browser, "id", "editor")
    double_click_div_with_popup(browser, "id", "editor")
    flash_div(browser, "id", "editor")
    puts exists_div?(browser, "id", "editor")
    puts get_div_text(browser, "id", "editor")
    close_browser(browser)
  end

end