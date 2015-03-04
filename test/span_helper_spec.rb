require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Span helper specs" do
  
  it "Should test span helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://www.cleartrip.com/")
    maximize_browser(browser)
    puts exists_span?(browser, "class", "cleartripLogo")
    flash_span(browser, "class", "cleartripLogo")
    close_browser(browser)
  end

end