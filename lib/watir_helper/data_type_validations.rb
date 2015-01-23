#******************************************************
#DataType Validation methods
#******************************************************
module DataTypeValidationsHelper

#Check whether the value entered is an Integer or not.
def is_integer?(value)
 value.is_a?(Integer)
end

#Check whether the value entered is a Float or not.
def is_float?(value)
 value.is_a?(Float)
end

#Check whether the value entered is a String or not.
def is_string?(value)
 value.is_a?(String)
end

#Check whether the value entered is a Regular Expression or not.
def is_reg_exp?(value)
 value.is_a?(Regexp)
end

#Check whether the value entered is a Range or not.
def is_range?(value)
 value.is_a?(Range)
end

#Check whether the value entered is a Character or not.
def is_char?(value) #Like "3", 3, "a", 'a', '!', '~' etc.
 (value.to_s).length == 1
end

end