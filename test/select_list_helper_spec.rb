require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Select list helper specs" do
  
  it "Should test select list helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://www.cleartrip.com/")
    maximize_browser(browser)
    select_from_select_list(browser, "id", "Adults", "2")
    puts is_value_selected_from_select_list?(browser, "id", "Adults", "2")
    contents = get_selected_contents_of_select_list(browser, "id", "Adults")
    puts "=== selected contents are #{contents.inspect} ==="
    flash_select_list(browser, "id", "Adults")
    exists_select_list?(browser, "id", "Adults")
    goto_page(browser, "http://www.htmlcodetutorial.com/forms/_SELECT_MULTIPLE.html")
    puts "=== all contents are: ==="
    puts get_all_contents_of_select_list(browser, "name", "toppings")
    select_from_select_list(browser, "name", "toppings", "onions")
    select_from_select_list(browser, "name", "toppings", "green peppers")
    contents = get_selected_contents_of_select_list(browser, "name", "toppings")
    puts "=== selected contents are #{contents.inspect} ==="
    puts is_value_selected_from_select_list?(browser, "name", "toppings", "onions")
    clear_selection_from_select_list(browser, "name", "toppings")
    close_browser(browser)
  end

end