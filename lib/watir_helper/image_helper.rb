#******************************************************
#Image methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module ImageHelper

#Click an image.    
def click_image(browser_handle, property, property_value)
  browser_handle.image(property.intern, /#{property_value}/).click
end

#Click an image ,after clicking which a pop-up will come.
def click_image_with_popup(browser_handle, property, property_value)
  browser_handle.image(property.intern, /#{property_value}/).click_no_wait
end

#Double Click an image.  
def double_click_image(browser_handle, property, property_value)
  browser_handle.image(property.intern, /#{property_value}/).fire_event("ondblclick")
end

#Double Click an image ,after clicking which a pop-up will come.  
def double_click_image_with_popup(browser_handle, property, property_value)
  browser_handle.image(property.intern, /#{property_value}/).fire_event_no_wait("ondblclick")
end

#Highlight or Flash an image.  
def flash_image(browser_handle, property, property_value)
  browser_handle.image(property.intern, /#{property_value}/).flash
end

#Check whether an image exists or not.
def exists_image?(browser_handle, property, property_value)
  browser_handle.image(property.intern, /#{property_value}/).exists?
end

end