#******************************************************
#TextField methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module TextFieldHelper

#Set a texfield with a text.   
def set_textfield(browser_handle, property, property_value, settextvalue)
  $settext = settextvalue
  browser_handle.text_field(property.intern, /#{property_value}/).set settextvalue.to_s
end

#Get the text from the textfield.
def get_textfield()
  $settext.nil? ?  nil : $settext
end

#Clear a texfield.   
def clear_textfield(browser_handle, property, property_value)
  browser_handle.text_field(property.intern, /#{property_value}/).clear
end

#TextField contains a value or not
def is_value?(val)
  get_textfield() == val ? true : false
end

#Highlight or Flash a textfield.  
def flash_textfield(browser_handle, property, property_value)
  browser_handle.text_field(property.intern, /#{property_value}/).flash
end

#Check whether a textfield exists or not.
def exists_textfield?(browser_handle, property, property_value)
  browser_handle.text_field(property.intern, /#{property_value}/).exists?
end

#Check whether a textfield is blank or not.
def is_blank_textfield?()
  $settext.nil? ? true : false
end

end