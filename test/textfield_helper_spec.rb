require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Textfield helper specs" do
  
  it "Should test textfield helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://www.google.com/")
    maximize_browser(browser)
    puts "Set textfield contenets."
    set_textfield(browser, "name", "q", 100) 
    puts "Textfield contents are:"
    puts get_textfield_contents(browser, "name", "q")
    puts "Clear textfield contents."
    clear_textfield(browser, "name", "q")
    puts "Textfield contents are:"
    puts get_textfield_contents(browser, "name", "q")
    puts "Textfield is empty? :"
    puts is_blank_textfield?(browser, "name", "q")
    puts "Set textfield contents."
    set_textfield(browser, "name", "q", 100) 
    puts "Textfield contains the value entered? :"
    puts textfield_contains_value?(browser, "name", "q", "100")
    flash_textfield(browser, "name", "q")
    puts "Textfield exists? :"
    puts exists_textfield?(browser, "name", "q")
    close_browser(browser)
  end

end