require 'watir_helper/common_helpers'

module TextFieldHelper

#Set a texfield with a text.   
def set_textfield(property,propertyvalue,settextvalue)
  $settext=settextvalue
  $ie.text_field(property.intern,propertyvalue).set settextvalue
end

#Get the text from the textfield.
def get_textfield()
  if $settext.nil?
    return nil
  else
    return $settext
  end
end

#Clear a texfield.   
def clear_textfield(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.text_field(property.intern,propertyvalue).clear
end

#Highlight or Flash a textfield.  
def flash_textfield(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.text_field(property.intern,propertyvalue).flash
end

#Check whether a textfield exists or not.
def exists_textfield(property,propertyvalue) 
  propertyvalue=/#{propertyvalue}/
  $ie.text_field(property.intern,propertyvalue).exists?
end

#Check whether a textfield is blank or not.
def is_blank_textfield()
  return $settext.nil? ? true : false 
end

end








