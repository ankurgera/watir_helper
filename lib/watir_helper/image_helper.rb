require 'watir_helper/common_helpers'

module ImageHelper

#Click an image.    
def click_image(property,propertyvalue)
   propertyvalue=/#{propertyvalue}/
  $ie.image(property.intern,propertyvalue).click
end

#Click an image ,after clicking which a pop-up will come.
def click_image_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.image(property.intern,propertyvalue).click_no_wait
end

#Double Click an image.  
def double_click_image(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.image(property.intern,propertyvalue).fire_event("ondblclick") 
end

#Double Click an image ,after clicking which a pop-up will come.  
def double_click_image_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.image(property.intern,propertyvalue).fire_event_no_wait("ondblclick") 
end

#Highlight or Flash an image.  
def flash_image(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.image(property.intern,propertyvalue).flash
end

#Check whether an image exists or not.
def exists_image(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.image(property.intern,propertyvalue).exists?
end

end