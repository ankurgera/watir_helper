require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Image helper specs" do
  
  it "Should test image helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    maximize_browser(browser)
    click_image(browser, "alt", "Ruby logo.svg")
    goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    click_image_with_popup(browser, "alt", "Ruby logo.svg")
    goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    double_click_image(browser, "alt", "Ruby logo.svg")
    goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    double_click_image_with_popup(browser, "alt", "Ruby logo.svg")
    goto_page(browser, "http://en.wikipedia.org/wiki/Ruby_(programming_language)")
    flash_image(browser, "alt", "Ruby logo.svg")
    puts exists_image?(browser, "alt", "Ruby logo.svg")
    close_browser(browser)
  end

end