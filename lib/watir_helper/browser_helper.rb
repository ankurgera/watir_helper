#******************************************************
#Browser methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module BrowserHelper

#Set a browser.
#For e.g set_browser("ie")
def set_browser(browser_name)
  Watir.driver = "webdriver" unless(browser_name == "ie")
  # Rails.logger.info("=== watir_helper:driver is #{Watir.driver} ===")
  Watir::Browser.new browser_name.intern	
end

#Go to a page.
def goto_page(browser_handle, url)
  browser_handle.goto(url)
end

#Go to the previous page.
def previous_page(browser_handle)
  browser_handle.back
end

alias :goto_previous_page :previous_page

#Go to the next page.
def next_page(browser_handle)
  browser_handle.forward
end

alias :goto_next_page :next_page

#Refresh the page.
def refresh(browser_handle)
  browser_handle.refresh
end

alias :refresh_the_page :refresh

#Get the title of the browser.
def get_title(browser_handle)
  browser_handle.title
end

#Get the url of the browser.
def get_url(browser_handle)
  browser_handle.url
end

#Close the browser.
#brute force solution => system("taskkill /t /f /im iexplore.exe")
def close_browser(browser_handle)
 (Watir.driver == "webdriver") ? browser_handle.close : browser_handle.ie.quit
end

#Attach a browser window.
def attach_browser_window(property, propertyvalue)
  Watir::Browser.attach(property.intern, /#{propertyvalue}/)
end

#Close attached browser window.
def close_attached_window(window_handle)
  close_browser(window_handle)
end

#Minimize the browser.
def minimize_browser(browser_handle)
  browser_handle.minimize unless(Watir.driver == "webdriver")
end

#Maximize the browser.
def maximize_browser(browser_handle)
  browser_handle.maximize unless(Watir.driver == "webdriver")
end

#Verify whether text is present or not.
def verify_text?(browser_handle, text_to_verified)
  browser_handle.text.include?(text_to_verified)
end

end