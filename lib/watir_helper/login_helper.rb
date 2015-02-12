#******************************************************
#Login methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module LoginHelper

#Login using button into an application.
def login_using_button(browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, btn_prop, btn_prop_value)
  browser_handle.text_field(user_prop.intern,user_prop_value).set(username)
  browser_handle.text_field(pass_prop.intern,pass_prop_value).set(password)
  browser_handle.button(/#{btn_prop}/.intern, /#{btn_prop_value}/).click
end

#Login using link into an application.
def login_using_link(browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, link_prop, link_prop_value)
  browser_handle.text_field(user_prop.intern,user_prop_value).set(username)
  browser_handle.text_field(pass_prop.intern,pass_prop_value).set(password)
  browser_handle.link(/#{link_prop}/.intern, /#{link_prop_value}/).click
end

#Login using image into an application.
def login_using_image(browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, img_prop, img_prop_value)
  browser_handle.text_field(user_prop.intern,user_prop_value).set(username)
  browser_handle.text_field(pass_prop.intern,pass_prop_value).set(password)
  browser_handle.image(/#{img_prop}/.intern, /#{img_prop_value}/).click
end

end