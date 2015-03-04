require File.expand_path('../lib/watir_helper.rb', File.dirname(__FILE__))

describe "Scenario :- Table helper specs" do
  
  it "Should test table helper features" do
    browser = set_browser("ie")
  	goto_page(browser, "http://www.textfixer.com/tutorials/css-tables.php")
    maximize_browser(browser)
    puts exists_table?(browser, "class", "gridtable")
    flash_table(browser, "class", "gridtable")
    puts get_row_contents(browser, "class", "gridtable", 1)
    puts get_a_cell_content(browser, "class", "gridtable", 1, 1)
    puts get_nor_table(browser, "class", "gridtable")
    puts get_noc_table(browser, "class", "gridtable")
    puts get_table_contents(browser, "class", "gridtable")
    close_browser(browser)
  end

end