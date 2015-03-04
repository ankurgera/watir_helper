#******************************************************
#Login methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module LoginHelper


def login_using_elem(elem_type, browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, btn_prop, btn_prop_value)
  browser_handle.text_field(user_prop.intern, user_prop_value).set(username)
  browser_handle.text_field(pass_prop.intern, pass_prop_value).set(password)
  (browser_handle.send elem_type, btn_prop.intern, /#{btn_prop_value}/).click
end

#Login using button into an application.
def login_using_button(browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, btn_prop, btn_prop_value)
  login_using_elem("button".to_sym, browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, btn_prop, btn_prop_value)
end

#Login using link into an application.
def login_using_link(browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, link_prop, link_prop_value)
  login_using_elem("link".to_sym, browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, link_prop, link_prop_value)
end

#Login using image into an application.
def login_using_image(browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, img_prop, img_prop_value)
  login_using_image("image".to_sym, browser_handle, user_prop, user_prop_value, username, pass_prop, pass_prop_value, password, img_prop, img_prop_value)
end

end