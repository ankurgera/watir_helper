#******************************************************
#Validation methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module ValidationsHelper

#Check whether a character range is present in a textfield or not.  
def chars_range_exists?(range_start, range_end)
  if(is_char?(range_start) and is_char?(range_end) and (range_start <= range_end))
   $settext.gsub(/[#{range_start}-#{range_end}]/, '*').index('*') ? true : false
  else
   puts "Please enter a valid range(like (0,9) or (a,z) etc.)"
  end
end

#Check whether a substring is present in a textfield or not.  
def contains_sub_string?(sub_string)
  if(is_string?(sub_string))
   $settext.sub(sub_string, '*').index('*') ? true : false
  else
   puts "Parameter value passed should be a string"
  end
end

#Check whether a date is in mmddyyyy format or not.  
def valid_date_format_mmddyyyy(date)
 if(is_string?(date))
  if(date =~ /^(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/).nil?
    puts "Invalid Date(mmddyyyy) Format"
  else
    puts "Valid Date(mmddyyyy) Format"
  end
 else
    puts "Error: Date value passed should be a string"
 end
end

#Check whether a date is in ddmmyyyy format or not.  
def validate_date_format_ddmmyyyy(date)
 if(is_string?(date))
  if(date =~ /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/).nil?
    puts "Invalid Date(ddmmyyyy) Format"
  else
    puts "Valid Date(ddmmyyyy) Format"
  end
 else
    puts "Error: Date value passed should be a string"
 end
end


#Age value is between 1 and 100 or not
def valid_age?(value)
 value > 0 and value <= 100
end

#Check whether the age entered is in the given range or not.  
def age_in_the_range?(range_start, range_end)
 if(is_integer?($settext) and is_integer?(range_start) and is_integer?(range_end))
  if(valid_age?($settext) and valid_age?(range_start) and valid_age?(range_end))
   ($settext >= range_start and $settext <= range_end) ? true : false
  else
   return "Error: Either the entered value or range is not between 1 and 100."
  end
 else
   return "Error: Either the entered value or range is not an integer."
 end
end

#Check whether e-mail adress supplied is valid or not.  
def validate_email_address(email_id)
 if(is_string?(email_id))
  if(email_id =~ /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/).nil?
   puts "Error: Invalid E-mail id Format"
  else
   puts "Valid E-mail id Format"
  end
 else
    puts "Error: E-mail value passed should be a string"
 end
end

#Check whether the indian mobile number entered is valid or not.  
def validate_indian_mobile_number(mobile_no)
 if(is_string?(mobile_no) and mobile_no.to_i > 0)
   if(mobile_no.length == 10)
     if(mobile_no =~ /^([9]{1})([023456789]{1})([0-9]{8})$/).nil?
       puts "Error: Invalid Mobile number format"
     else
       puts "Valid Mobile number format"
     end
   else
    puts "Error: Mobile number should be of 10 digits"
   end
 else
   puts "Error: Invalid Mobile number format"
 end
end
 
#Check whether the indian landline number entered is valid or not.  
def validate_indian_landline_number(landline_no)#like "020-30303030"
 if(is_string?(landline_no) and landline_no.length == 12) #In India landline number should be of 10 digits including std code
    #Here we will prefix "0" before std code and "-" between std code and the respective landline number
    if(landline_no =~ /^[0]{1}[1-9]{1}[0-9]{1,3}[\-]{1}[1-9]{1}[0-9]{5,7}$/).nil?
      puts "Wrong Landline number format"
    else
      puts "Correct Landline number format"
    end
 else
  puts "Error: Wrong Landline number format"
 end
end

#Check whether the value entered contains a string or not.  
def contain_chars?(char_set)
 is_string_contains_char_set?($settext, char_set)
end

#Check whether a string contains a regular expression or not.  
def is_string_contains_reg_exp_char_set?(char_string, char_set)
 flag = 0
 #Here char_set is a regular expression of characters
 #The format for regular expression of character set(or char_set) should be like /[$#!@^*&()~]/
 if( (char_string.sub(char_set, '**').index('**') ? true : false) == true )
    flag = 1
  end
  flag == 1
end

#Check whether a string contains another string or not.  
def is_string_contains_char_set?(char_string, char_set)
  flag = 0
  #Here char_set is a string of characters
  char_set.each_byte do |char|
   char_string.sub(char.chr.to_s, '**').index('**') ? flag = 1 : flag = 0
  end
  flag == 1
end

end




