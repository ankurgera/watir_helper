require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Browser helper specs" do
  
  it "Should test browser helper features" do
   browser = set_browser("ie") 
   goto_page(browser, "http://www.google.com/")
   maximize_browser(browser)
   set_textfield(browser, "name", "q", 100)
   click_button(browser, "name","btnG")
   puts verify_text?(browser, "100")
   goto_previous_page(browser)
   goto_next_page(browser)
   refresh_the_page(browser)
   puts "Title is #{get_title(browser)}"
   puts "Url is #{get_url(browser)}"
   minimize_browser(browser)
   close_browser(browser)
   browser2 = set_browser("ie") 
   goto_page(browser2, "http://www.google.com/")
   window_handle = attach_browser_window(:title, get_title(browser2))
   close_attached_window(window_handle)
  end
  
end
