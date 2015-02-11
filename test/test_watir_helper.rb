require '../lib/watir_helper.rb'

ie = set_browser("ie")
goto_page(ie, "http://www.google.com/")
get_title(ie)
get_url(ie)
flash_div(ie, "id", "hplogo")
exists_div?(ie, "id", "hplogo")
puts is_blank_textfield?(ie, "name", "q")
set_textfield(ie, "name", "q", 100)
puts is_blank_textfield?(ie, "name", "q")
puts textfield_contains_value?(ie, "name", "q", "100")
puts textfield_contains_value?(ie, "name", "q", "101")
puts age_in_the_range?(1, 100)
flash_button(ie, "name","btnG")
click_button(ie, "name","btnG")
close_browser(ie)
# puts is_string_contains_reg_exp?("ankurgera@gmail.com", /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/)
# puts is_string_contains_another_string?("abc123@gmail.com", "3@g")
# puts is_string_contains_another_string?("abc123@gmail.com", "13@g")
# puts valid_indian_landline_number?('0130-3030303')
# puts valid_mmddyyyy_date_format?(02-10-2015)
# puts valid_mmddyyyy_date_format?("02-10-2015")
# puts valid_mmddyyyy_date_format?("22-10-2015")
# puts valid_ddmmyyyy_date_format?(10-02-2015)
# puts valid_ddmmyyyy_date_format?("10-02-2015")
# puts valid_ddmmyyyy_date_format?("42-10-2015")
# puts valid_age?(100)
# puts valid_age?("100")
# puts valid_age?(-100)
# puts valid_age?(0)
# puts valid_email_id?("abc123@gmail.com")
# puts valid_email_id?("abc123gmail.com")
# puts valid_email_id?(23)
# puts valid_indian_mobile_number?(9123456789)
# puts valid_indian_mobile_number?("9123456789")
# puts valid_indian_mobile_number?("91234567890")
# puts valid_indian_landline_number?(01303030303)
# puts valid_indian_landline_number?('0130-3030303')
# puts valid_indian_landline_number?('0130-30303030')