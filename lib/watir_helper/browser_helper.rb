#******************************************************
#Browser methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module BrowserHelper

#Set a browser.
#For e.g set_browser("ie")
def set_browser(browser_name)
  Watir::Browser.new browser_name.intern	
end

#Go to a page.
def goto_page(browser_handle, url)
 browser_handle.goto(url)
end

#Go to the next page.
def goto_next_page(browser_handle)
 browser_handle.forward
end

#Go to the previous page.
def goto_previous_page(browser_handle)
 browser_handle.back
end

#Refresh the page.
def refresh_the_page(browser_handle)
  browser_handle.refresh
end

#Get the title of the browser.
def get_title(browser_handle)
  browser_handle.title
end

#Get the url of the browser.
def get_url(browser_handle)
  browser_handle.url
end

#Close the browser.
def close_browser(browser_handle)
  browser_handle.close
end

#Attach a browser window.
def attach_browser(browser_handle, property, property_value)
  browser_handle.attach(property.intern, /#{property_value}/)
end

#Close attached browser window.
def close_attached_browser(browser_handle)
  close_browser(browser_handle)
end

#Minimize the browser.
def minimize_browser(browser_handle)
  browser_handle.minimize
end

#Maximize the browser.
def maximize_browser(browser_handle)
  browser_handle.maximize
end

#Verify whether text is present or not.
def verify_text?(browser_handle, text)
  browser_handle.text.include?(text)
end

end