#******************************************************
#Button methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module ButtonHelper

#Click a button.  
def click_button(browser_handle, property, property_value)
  browser_handle.button(property.intern, /#{property_value}/).click
end

#Click a button ,after clicking which a pop-up will come.
def click_button_with_popup(browser_handle, property, property_value)
  browser_handle.button(property.intern, /#{property_value}/).click_no_wait
end

#Double Click a button.  
def double_click_button(browser_handle, property, property_value)
  browser_handle.button(property.intern, /#{property_value}/).fire_event("ondblclick")
end

#Double Click a button, after clicking it a pop-up will come.  
def double_click_button_with_popup(browser_handle, property, property_value)
  browser_handle.button(property.intern, /#{property_value}/).fire_event_no_wait("ondblclick")
end

#Highlight or Flash a button.  
def flash_button(browser_handle, property, property_value)
  browser_handle.button(property.intern, /#{property_value}/).flash
end

#Check whether a button exists or not.
def exists_button?(browser_handle, property, property_value)
  browser_handle.button(property.intern, /#{property_value}/).exists?
end

end

