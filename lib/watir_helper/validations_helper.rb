#******************************************************
#Validation methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module ValidationsHelper

#Invalid date format message
def invalid_date_error_type(err_type, obj_type)
  (err_type == "format") ? (puts "Invalid #{obj_type.downcase} format.") : (puts "#{obj_type} should be a String.")
  return false
end

#String contains regular expression or not.
def string_contains_reg_exp?(char_string, reg_exp)
  (char_string =~ reg_exp).nil?
end

#Data passed is in valid format or not.
def is_valid_data_with_format?(date, reg_ex_date, obj_type)
  is_string?(date) ? (string_contains_reg_exp?(date, reg_ex_date) ? invalid_date_error_type("format", obj_type) : true) : invalid_date_error_type("data type", obj_type)
end

#Check whether a date is in mmddyyyy format or not.  
#Valid date format "02/10/2015", "02-10-2015" and "02.10.2015". 
#For e.g valid_mmddyyyy_date_format?(02-10-2015) will return false(and
#print message 'Date should be a String.')
#and valid_mmddyyyy_date_format?("02-10-2015") will return true
#and valid_mmddyyyy_date_format?("22-10-2015") will return false(and
#print message 'Invalid date format.')
def valid_mmddyyyy_date_format?(date)
  is_valid_data_with_format?(date, /^(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/, "Date")
end

#Check whether a date is in ddmmyyyy format or not.  
#Valid date format "10/02/2015", "10-02-2015" and "10.02.2015".
#For e.g valid_ddmmyyyy_date_format?(10-02-2015) will return false(and
#print message 'Date should be a String.')
#and valid_ddmmyyyy_date_format?("10-02-2015") will return true
#and valid_ddmmyyyy_date_format?("42-10-2015") will return false(and
#print message 'Invalid date format.')
def valid_ddmmyyyy_date_format?(date)
  is_valid_data_with_format?(date, /^(0[1-9]|[12][0-9]|3[01])[- \/.](0[1-9]|1[012])[- \/.](19|20)\d\d$/, "Date")
end

#Check whether e-mail adress supplied is valid or not.  
#For e.g valid_email_id?("abc123@gmail.com") will return true
#and valid_email_id?("abc123gmail.com") will return false(and
#print message 'Invalid email format.')
def valid_email_id?(email_id)
  is_valid_data_with_format?(email_id, /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/, "Email")
end

#Mobile no. is of 10 digits or not.
def valid_mobile_no_length?(mobile_no)
 (mobile_no.to_s.length == 10) ? true : (puts "Mobile no. should be of 10 digits.")
end

#Mobile no. is valid or not.
def is_valid_mobile_no?(mobile_no)
  (mobile_no.to_i > 0) ? valid_mobile_no_length?(mobile_no) : false
end

#Check whether the indian mobile number entered is valid or not.  
#Here valid means mobile no. will have the prefix 9, 8 or 7. It will not
#tell whether that number exists or not.
#For e.g valid_indian_mobile_number?(9123456789) will return false(and
#print message 'Mobile no. should be a String.')
# puts valid_indian_mobile_number?("9123456789") will return true
# puts valid_indian_mobile_number?("91234567890")  will return false(and
#print message 'Mobile no. should be of 10 digits.')
def valid_indian_mobile_number?(mobile_no)
 is_valid_mobile_no?(mobile_no) ? is_valid_data_with_format?(mobile_no, /^([9]{1}|[8]{1}|[7]{1})([0-9]{9})$/, "Mobile no.") : false
end

#Valid length of landline no. or not.
def is_valid_length_of_landline_no?(landline_no)
  (landline_no.to_s.length == 12) ? true : (puts "Landline no. should be of 11 digits(for e.g '0130-1234567').")
end

#Landline no. is valid or not.
def is_valid_landline_no?(landline_no)
  is_string?(landline_no) ? is_valid_length_of_landline_no?(landline_no) : (puts "Landline no. should be a String.")
end
 
#Check whether the indian landline number entered is valid or not. 
#For e.g valid_indian_landline_number?(01303030303) will return false(and 
#print message 'Landline no. should be a String.')
#and valid_indian_landline_number?('0130-3030303') will return true
#and valid_indian_landline_number?('0130-30303030') will return false(and 
#print message 'Landline no. should be of 11 digits(for e.g '0130-1234567').')
def valid_indian_landline_number?(landline_no)
  is_valid_landline_no?(landline_no) ? is_valid_data_with_format?(landline_no, /^[0]{1}[1-9]{1}[0-9]{1,3}[\-]{1}[1-9]{1}[0-9]{5,7}$/, "Landline no.") : false
end

#Age data type format message.
def age_data_type_format_msg
  puts "Age should be an Integer."
  return false
end

#Age value is between 1 and 100 or not.
#For e.g valid_age?(100) will return true
#and valid_age?("100") will return false(and print message 'Age should be an Integer.')
#and valid_age?(-100) will return false
def valid_age?(age)
 is_integer?(age) ? (age > 0 and age <= 100) : age_data_type_format_msg
end

#Valid string and regular expression.
def valid_string_and_reg_ex?(char_string, reg_exp)
 str_flag = is_string?(char_string)
 regex_flag = is_reg_exp?(reg_exp) 
 puts "First argument should be a String." unless(str_flag)
 puts "Second argument should be a Regular Expression." unless(regex_flag)
 str_flag && regex_flag
end

#Valid strings.
def valid_strings?(string1, string2)
  str1_flag = is_string?(string1)
  str2_flag = is_string?(string2)
  puts "First argument should be a String." unless(str1_flag)
  puts "Second argument should be a String." unless(str2_flag)
  str1_flag && str2_flag
end

#Check whether a string contains a regular expression or not.  
#For e.g 
#is_string_contains_reg_exp?("ankurgera@gmail.com", /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/)
#will return true
#and is_string_contains_reg_exp?("ankurgeragmail.com", /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/)
#will return false 
def is_string_contains_reg_exp?(char_string, reg_exp)
 (char_string.sub(reg_exp, '**').index('**') ? true : false) if(valid_string_and_reg_ex?(char_string, reg_exp))
end

#Check whether a string contains another string or not.  
#For e.g is_string_contains_another_string?("abc123@gmail.com", "123@g") will return true
#and is_string_contains_another_string?("abc123@gmail.com", "13@g") will return false
def is_string_contains_another_string?(char_string, char_set)
  (char_string.sub(char_set, '**').index('**') ? true : false) if(valid_strings?(char_string, char_set))
end

end




