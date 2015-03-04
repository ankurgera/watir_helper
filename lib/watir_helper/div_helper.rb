#******************************************************
#Div methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

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

#Get div text
def get_div_text(browser_handle, property, property_value)
  browser_handle.div(property.intern, /#{property_value}/).text
end

end