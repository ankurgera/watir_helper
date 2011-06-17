require 'watir_helper/common_helpers'

module LinkHelper

#Click a link.    
def click_link(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.link(property.intern,propertyvalue).click
end

#Click a link ,after clicking which a pop-up will come.
def click_link_with_popup(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.link(property.intern,propertyvalue).click_no_wait
end

#Highlight or Flash a link.  
def flash_link(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.link(property.intern,propertyvalue).flash
end

#Check whether a link exists or not.
def exists_link(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.link(property.intern,propertyvalue).exists?
end

end
