#******************************************************
#Div methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module DivHelper

#Click a div.
def click_div(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).click
end

#Click a div, after clicking which a pop-up will come.
def click_div_with_popup(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).click_no_wait
end

#Double Click a div.
def double_click_div(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).fire_event("ondblclick")
end

#Double Click a div, after clicking which a pop-up will come.
def double_click_div_with_popup(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).fire_event_no_wait("ondblclick")
end

#Highlight or Flash a div.
def flash_div(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).flash
end

#Check whether a div exists or not.
def exists_div?(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).exists?
end

end