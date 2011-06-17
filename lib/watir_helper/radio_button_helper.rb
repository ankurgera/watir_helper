require 'watir_helper/common_helpers'

module RadioButtonHelper

#Click a radio button.    
def click_radio_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.radio(property.intern,propertyvalue).set
end

#Clear a radio button.    
def clear_radio_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.radio(property.intern,propertyvalue).clear
end

#Highlight or Flash a radio button.  
def flash_radio_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.radio(property.intern,propertyvalue).flash
end

#Check whether a radio button exists or not.
def exists_radio_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.radio(property.intern,propertyvalue).exists?
end

#Check whether a radio button is checked or not.
def is_checked_radio_button(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.radio(property.intern,propertyvalue).checked?
end

end