require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Validations helper specs" do
  
  it "Should test validations helper features" do
    puts valid_mmddyyyy_date_format?(02-10-2015)     #false
    puts valid_mmddyyyy_date_format?("02-10-2015")   #true
    puts valid_mmddyyyy_date_format?("22-10-2015")   #false 
    puts valid_ddmmyyyy_date_format?(10-02-2015)     #false
    puts valid_ddmmyyyy_date_format?("10-02-2015")   #true
    puts valid_ddmmyyyy_date_format?("42-10-2015")   #false
    puts valid_email_id?("abc123@gmail.com")         #true
    puts valid_email_id?("abc123gmail.com")          #false 
    puts valid_indian_mobile_number?(9123456789)     #false
    puts valid_indian_mobile_number?("9123456789")   #true
    puts valid_indian_mobile_number?("91234567890")  #false
    puts valid_indian_landline_number?(01303030303)  #false
    puts valid_indian_landline_number?('0130-3030303')  #true
    puts valid_indian_landline_number?('0130-30303030') #false 
    puts valid_age?("100") #false
    puts valid_age?(-100)  #false
    puts valid_age?(100)   #true
    puts is_string_contains_reg_exp?("ankurgera@gmail.com", /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/) #true
    puts is_string_contains_reg_exp?("ankurgeragmail.com", /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/)  #false
    puts is_string_contains_another_string?("abc123@gmail.com", "123@g") #true
    puts is_string_contains_another_string?("abc123@gmail.com", "13@g")  #false        
    puts is_string_contains_reg_exp?("ankurgeragmail.com", "abc") #false
    puts is_string_contains_another_string?("abc123@gmail.com", /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/)  #false        
  end

end