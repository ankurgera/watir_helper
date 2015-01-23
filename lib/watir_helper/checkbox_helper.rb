#******************************************************
#CheckBox methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module CheckBoxHelper

#Click a checkbox.   
def click_checkbox(browser_handle, property, property_value)
  browser_handle.checkbox(property.intern, /#{property_value}/).set
end

#Clear a checkbox.   
def clear_checkbox(browser_handle, property, property_value)
  browser_handle.checkbox(property.intern, /#{property_value}/).clear
end

#Highlight or Flash a checkbox.   
def flash_checkbox(browser_handle, property, property_value)
  browser_handle.checkbox(property.intern, /#{property_value}/).flash
end

#Check whether a checkbox exists or not.
def exists_checkbox?(browser_handle, property, property_value)
  browser_handle.checkbox(property.intern, /#{property_value}/).exists?
end

#Check whether a checkbox is checked/set or not.
def is_checkbox_checked?(browser_handle, property, property_value)
  browser_handle.checkbox(property.intern, /#{property_value}/).checked?
end

end