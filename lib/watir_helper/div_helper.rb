require 'watir_helper/common_helpers'

module DivHelper

#Click a div.
def click_div(property,propertyvalue)
   propertyvalue=/#{propertyvalue}/
  $ie.div(property.intern,propertyvalue).click
end

#Click a div, after clicking which a pop-up will come.
def click_div_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.div(property.intern,propertyvalue).click_no_wait
end

#Double Click a div.
def double_click_div(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.div(property.intern,propertyvalue).fire_event("ondblclick")
end

#Double Click a div, after clicking which a pop-up will come.
def double_click_div_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.div(property.intern,propertyvalue).fire_event_no_wait("ondblclick")
end

#Highlight or Flash a div.
def flash_div(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.div(property.intern,propertyvalue).flash
end

#Check whether a div exists or not.
def exists_div(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.div(property.intern,propertyvalue).exists?
end

end