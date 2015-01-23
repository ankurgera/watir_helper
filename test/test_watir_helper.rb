require '../lib/watir_helper.rb'

ie = set_browser("ie")
goto_page(ie, "http://www.google.com/")
# puts get_title
# puts get_url
# flash_div("id", "hplogo")
# exists_div?("id", "hplogo")
# is_blank_textfield?()
# set_textfield("name", "q", 100)
# is_blank_textfield?()
# is_value?(100)
# puts age_in_the_range?(1, 100)
# flash_button("name","btnG")
# click_button("name","btnG")

# goto_page("http://qahome.intranet.mckinsey.com/prc/ganttsummaryv2/fmno/48336")
# flash_link("href", "/prc/ganttsummaryv2/fmno/48336.xls")
# click_link_with_popup("href", "/prc/ganttsummaryv2/fmno/48336.xls")
# puts "====================== File Download =========================="
# puts click_save_file_dialog_popup("File Download")
# puts "====================== Save =========================="
# puts click_save_saveas_popup("Save","C:\\Aboagye_48336_EY14_UT_PRC_OCT_Gantt_Summary_report.xls")
# puts "======================"
# window2 = RAutomation::Window.new(:title => /#{"Confirm Save"}/)
# window2.activate
# puts window2.exists?
# puts window2.visible?
# all_windows = RAutomation::Window.windows
# all_windows.each {|window| puts "handle: #{window.hwnd}, title: #{window.title}"}
# click_yes_js_popup("Confirm Save") if(popup_exists_with_title?("Confirm Save"))
# puts "======================"
# puts get_title
# puts get_url

close_browser(ie)
close_browser($ie)
#Confirm Save


