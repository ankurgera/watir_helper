require 'watir_helper/common_helpers'

module CheckBoxHelper

#Click a checkbox.   
def click_checkbox(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.checkbox(property.intern,propertyvalue).set
end

#Clear a checkbox.   
def clear_checkbox(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.checkbox(property.intern,propertyvalue).clear
end

#Highlight or Flash a checkbox.   
def flash_checkbox(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.checkbox(property.intern,propertyvalue).flash
end

#Check whether a checkbox exists or not.
def exists_checkbox(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.checkbox(property.intern,propertyvalue).exists?
end

#Check whether a checkbox is checked/set or not.
def is_checked_checkbox(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
 $ie.checkbox(property.intern,propertyvalue).checked?
end

end