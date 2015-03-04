require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Popup handling helper specs" do
  
  it "Should test Popup handling helper features" do
    browser = set_browser("ie")
    goto_page(browser, "http://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm")
    maximize_browser(browser)
    click_button_with_popup_inside_frame(browser, "id", "iframeResult", "value", "Try it")
    click_ok_js_popup("page")
    puts frame_contains_text?(browser, "id", "iframeResult", "You pressed OK!")
    click_button_with_popup_inside_frame(browser, "id", "iframeResult", "value", "Try it")
    click_cancel_js_popup("page")
    puts frame_contains_text?(browser, "id", "iframeResult", "You pressed Cancel!")
    #Run below code by adding the url(mentioned below) in the secure list
    # goto_page(browser, "http://www.sublimetext.com/download")
    # click_link_with_popup(browser, "href", "Setup.exe")
    # click_save_file_dialog_popup("File Download")
    # click_save_saveas_popup("Save", "C:\Ruby_Projects")
    close_browser(browser)
  end

end