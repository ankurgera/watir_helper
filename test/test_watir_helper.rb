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
flash_button(ie, "name","btnG")
click_button(ie, "name","btnG")
close_browser(ie)

