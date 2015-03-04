require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Data type validations specs" do
  
  it "Should test data type validations features" do
    puts is_integer?("100") #false
    puts is_integer?(100)   #true
    puts is_float?("100.0") #false
    puts is_float?(100)     #false
    puts is_float?(100.0)   #true
    puts is_string?(100)    #false
    puts is_string?("100")  #true
    puts is_reg_exp?("100") #false
    puts is_reg_exp?(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/) #true
    puts is_range?((1..9))  #true
    puts is_range?([1-9])   #false
    puts is_char?("10")     #false
    puts is_char?("1")      #true
    puts is_char?(1)        #true
  end

end