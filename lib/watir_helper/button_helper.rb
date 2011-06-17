require 'watir_helper/common_helpers'

module ButtonHelper

#Click a button.  
def click_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.button(property.intern,propertyvalue).click
end

#Click a button ,after clicking which a pop-up will come.
def click_button_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.button(property.intern,propertyvalue).click_no_wait
end

#Double Click a button.  
def double_click_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.button(property.intern,propertyvalue).fire_event("ondblclick") 
end

#Double Click a button ,after clicking which a pop-up will come.  
def double_click_button_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.button(property.intern,propertyvalue).fire_event_no_wait("ondblclick") 
end

#Highlight or Flash a button.  
def flash_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.button(property.intern,propertyvalue).flash
end

#Check whether a button exists or not.
def exists_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.button(property.intern,propertyvalue).exists?
end

end

