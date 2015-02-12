#******************************************************
#Radio Button methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module RadioButtonHelper

#Click a radio button.    
def click_radio_button(browser_handle, property, property_value)
  browser_handle.radio(property.intern, /#{property_value}/).set
end

#Clear a radio button.    
def clear_radio_button(browser_handle, property, property_value)
  browser_handle.radio(property.intern, /#{property_value}/).clear
end

#Highlight or Flash a radio button.  
def flash_radio_button(browser_handle, property, property_value)
  browser_handle.radio(property.intern, /#{property_value}/).flash
end

#Check whether a radio button exists or not.
def exists_radio_button?(browser_handle, property, property_value)
  browser_handle.radio(property.intern, /#{property_value}/).exists?
end

#Check whether a radio button is checked or not.
def is_radio_button_checked?(browser_handle, property, property_value)
  browser_handle.radio(property.intern, /#{property_value}/).checked?
end

end