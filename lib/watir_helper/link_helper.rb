#******************************************************
#Link methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module LinkHelper

#Click a link.    
def click_link(browser_handle, property, property_value)
  browser_handle.link(property.intern, /#{property_value}/).click
end

#Click a link ,after clicking which a pop-up will come.
def click_link_with_popup(browser_handle, property, property_value)
  browser_handle.link(property.intern, /#{property_value}/).click_no_wait
end

#Highlight or Flash a link.  
def flash_link(browser_handle, property, property_value)
  browser_handle.link(property.intern, /#{property_value}/).flash
end

#Check whether a link exists or not.
def exists_link?(browser_handle, property, property_value)
  browser_handle.link(property.intern, /#{property_value}/).exists?
end

end
