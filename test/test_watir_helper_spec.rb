require 'watir_helper'
include WatirHelper

describe "Scenario :- Google page test" do
  
  before(:all) do
    goto_page("http://www.google.com/")
  end
  
  it "Should click search button on the Google landing page" do
   puts get_title
   puts get_url
   flash_image("id","logo")
   puts exists_image("id","logo")
   set_textfield("name","q","Ruby")
   flash_button("value","Google Search")
   click_button("value","Google Search")
  end
  
  after(:all) do
   close_browser()
  end
  
end

