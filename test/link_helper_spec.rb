require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Link helper specs" do
  
  it "Should test link helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    maximize_browser(browser)
    click_link(browser, "title", "Ruby on Rails")
    goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    click_link_with_popup(browser, "title", "Ruby on Rails")
    goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    flash_link(browser, "title", "Ruby on Rails")
    puts exists_link?(browser, "title", "Ruby on Rails")
    close_browser(browser)
  end

end