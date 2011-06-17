require 'watir_helper/common_helpers'

module ValidationsHelper

#Check whether a character range is present in a textfield or not.  
def validate_chars_range_contain_textfield(range_start,range_end) #for positive integers and chars range
  if (range_start <= range_end) and (range_start.length==1) and (range_end.length==1) 
   puts $settext.gsub(/[#{range_start}-#{range_end}]/,'*').index('*')? "Present" : "Not Present"  
  else
   puts "Error!!! :-Please input a valid range"
  end
end

#Check whether a substring is present in a textfield or not.  
def contains_sub_string(substring)
 return $settext.sub(substring,'*').index('*') ? true : false    
end

#Check whether a date is in mmddyyyy format or not.  
def validate_date_format_mmddyyyy(date)
 if(date =~ /^(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/).nil?
   puts "Invalid Date(mmddyyyy) Format"
 else  
   puts "Valid Date(mmddyyyy) Format"
 end
end

#Check whether a date is in ddmmyyyy format or not.  
def validate_date_format_ddmmyyyy(date)
 if(date=~/^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/).nil?
   puts "Invalid Date(ddmmyyyy) Format"
 else  
   puts "Valid Date(ddmmyyyy) Format"
 end
end

#Check whether the age entered is in the given range or not.  
def is_age_in_the_range(range_start,range_end)
 if ($settext.to_i>=range_start.to_i and $settext.to_i<=range_end.to_i)
    return true
 else
    return false
 end
end

#Check whether e-mail adress supplied is valid or not.  
def validate_email_address(email_id)
 if(email_id=~/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/).nil?
  puts "Invalid E-mail id Format"
 else  
  puts "Valid E-mail id Format"
 end
end

#Check whether the indian mobile number entered is valid or not.  
def validate_indian_mobile_number(mobile_no)
 if(mobile_no.to_i>0)
   if(mobile_no.length==10)
     if(mobile_no=~/^([9]{1})([023456789]{1})([0-9]{8})$/).nil?
       puts "Wrong Mobile number format"
     else
       puts "Correct Mobile number format"
     end
   elsif(mobile_no.length<10)
    puts "Error!!!! :- Mobile number length is less than 10 digit"
   elsif(mobile_no.length>10)
    puts "Error!!!! :- Mobile number length is more than 10 digit"
   end
 else
   puts "Error!!!! :- Mobile number can't be negative"
 end
end
 
#Check whether the indian landline number entered is valid or not.  
def validate_indian_landline_number(landline_no)#like "020-30303030"
 if(landline_no.length==12) #In India landline number should be of 10 digits including std code
    #Here we will prefix "0" before std code and "-" between std code and the respective landline number
    if(landline_no=~/^[0]{1}[1-9]{1}[0-9]{1,3}[\-]{1}[1-9]{1}[0-9]{5,7}$/).nil?
      puts "Wrong Landline number format"
    else
      puts "Correct Landline number format"
    end
 else
  puts "Error!!!! :- Wrong Landline number format"
 end
end

#Check whether the value entered is an Integer or not.  
def is_an_Integer(value)
 value.is_a?(Integer) 
end

#Check whether the value entered is a Float or not.  
def is_a_Float(value)
 value.is_a?(Float) 
end

#Check whether the value entered is a String or not.  
def is_a_String(value)
 value.is_a?(String)
end

#Check whether the value entered is a Regular Expression or not.  
def is_a_reg_exp(value)
 value.is_a?(Regexp) 
end


#Check whether the value entered is a Character or not.  
def is_a_char(value) #Like "3",'3',"a",'a'
  value.length==1
end

#Check whether the value entered contains a string or not.  
def contain_chars(char_set)
 is_string_contains_character_set($settext,char_set) 
end

#Check whether a string contains a regular expression or not.  
def is_string_contains_reg_exp_character_set(char_string,char_set) 
  flag=0 #Here char_set is a regular expression of characters
 #The format for regular expression of character set(or char_set) should be like /[$#!@^*&()~]/
 if(char_string.sub(char_set,'**').index('**') ? true : false)==true
    flag=1
  end
  flag==1 
end

#Check whether a string contains another string or not.  
def is_string_contains_character_set(char_string,char_set) 
  flag=0 #Here char_set is a string of characters 
  char_set.each_byte do |char|
   if(char_string.sub(char.chr.to_s,'**').index('**') ? true : false )==true
     flag=1
   end
  end
  flag==1
end

end




