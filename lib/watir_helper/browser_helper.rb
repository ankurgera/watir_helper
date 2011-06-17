require 'watir_helper/common_helpers'

module BrowserHelper

#Go to a page.
def goto_page(url)
 $ie.goto(url)
end

#Go to the next page.
def goto_next_page()
 $ie.forward
end

#Go to the previous page.
def goto_previous_page()
 $ie.back
end

#Refresh the page.
def refresh_the_page()
  $ie.refresh
end

#Close the browser.
def close_browser()
  title=get_title()
 $ai.WinKill(title)
end

#Get the title of the browser.
def get_title()
  $ie.title
end

#Get the url of the browser.
def get_url()
  $ie.url
end

#Attach an IE instance.
def attach_an_IE_window(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie=Watir::IE.attach(property.intern,propertyvalue)
end

#Minimize the browser.
def minimize_browser()
  $ie.minimize
end

#Maximize the browser.
def maximize_browser()
  $ie.maximize
end

#Verify whether text is present or not.
def verify_text(text)
  $ie.text.include?(text)
end

end
