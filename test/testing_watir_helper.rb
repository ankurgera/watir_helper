require 'watir_helper'
include WatirHelper

goto_page("http://www.google.com/")
puts get_title
puts get_url
flash_div("id","hplogo")
puts exists_div("id","hplogo")
set_textfield("name","q","Ruby")
flash_button("value","Google Search")
click_button("value","Google Search")


#Pop Up's Support
#   Watir now optionally installs AutoIt - http://www.autoitscript.com/
#   This is the prefered method for dealing wth pop ups, file requesters etc. 
# To enable the same, execute the following steps on your command prompt
#  - cd C:\ruby\lib\ruby\gems\1.8\gems\watir-1.6.2\lib\watir
#  - regsvr32 AutoItX3.dll
#  - You will get a pop-up of successful registration , press "OK" button on it.
# Now,You can easily handle pop-up's.

# Note:
#   The latest version of Watir is 1.6.5 whose close function doesn't work fine if we  
#   handle pop-up's in our scripts.But close function of Watir 1.6.2 works fine with
#   pop-up handling. 

#goto_page("http://www.autoitscript.com/autoit3/downloads.shtml")
#click_image_with_popup("src","download_autoit")
#click_save_on_file_dialog_popup("File Download - Security Warning")
#click_save_on_save_as_popup("Save As","C:\AutoItV3.exe")
#puts get_title
#puts get_url

close_browser()


