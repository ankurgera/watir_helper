#******************************************************
#Select List methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module SelectListHelper

#Select from a Select list.
def select_from_select_list(browser_handle, property, property_value, selected_value)
  browser_handle.select_list(property.intern, /#{property_value}/).select(selected_value)
end

#Clear selection from a Select list.
def clear_selection_from_select_list(browser_handle, property, property_value)
  browser_handle.select_list(property.intern, /#{property_value}/).clearSelection
end

#Get all contents of a Select list.
def get_all_contents_of_select_list(browser_handle, property, property_value)
  browser_handle.select_list(property.intern, /#{property_value}/).getAllContents
end

#Highlight or Flash a Select list.  
def flash_select_list(browser_handle, property, property_value)
  browser_handle.select_list(property.intern, /#{property_value}/).flash
end

#Check whether a Select list exists or not.
def exists_select_list?(browser_handle, property, property_value)
  browser_handle.select_list(property.intern, /#{property_value}/).exists?
end

#Check whether a particular value is selected from a Select list or not.
def is_value_selected_from_select_list?(browser_handle, property, property_value, selected_value)
  browser_handle.select_list(property.intern, /#{property_value}/).selected?(selected_value)
end

end