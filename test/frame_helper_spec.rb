require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Frame helper specs" do
  
  it "Should test frame helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm")
    maximize_browser(browser)
    click_button_with_popup_inside_frame(browser, "id", "iframeResult", "value", "Try it")
    click_ok_js_popup("page")
    puts frame_contains_text?(browser, "id", "iframeResult", "You pressed OK!")
    click_button_with_popup_inside_frame(browser, "id", "iframeResult", "value", "Try it")
    click_cancel_js_popup("page")
    puts frame_contains_text?(browser, "id", "iframeResult", "You pressed Cancel!")
    close_browser(browser)
  end

end