require 'watir_helper/common_helpers'

module LoginHelper

#Login using button into an application.
def login_using_button(user_prop,user_prop_value,username,pass_prop,pass_prop_value,password,btn_prop,btn_prop_value)
  btn_prop=/#{btn_prop}/
  btn_prop_value=/#{btn_prop_value}/
 $ie.text_field(user_prop.intern,user_prop_value).set(username)
 $ie.text_field(pass_prop.intern,pass_prop_value).set(password)
 $ie.button(btn_prop.intern,btn_prop_value).click
end

#Login using link into an application.
def login_using_link(user_prop,user_prop_value,username,pass_prop,pass_prop_value,password,link_prop,link_prop_value)
  link_prop=/#{link_prop}/
  link_prop_value=/#{link_prop_value}/
 $ie.text_field(user_prop.intern,user_prop_value).set(username)
 $ie.text_field(pass_prop.intern,pass_prop_value).set(password)
 $ie.link(link_prop.intern,link_prop_value).click
end

#Login using image into an application.
def login_using_image(user_prop,user_prop_value,username,pass_prop,pass_prop_value,password,img_prop,img_prop_value)
  img_prop=/#{img_prop}/
  img_prop_value=/#{img_prop_value}/
 $ie.text_field(user_prop.intern,user_prop_value).set(username)
 $ie.text_field(pass_prop.intern,pass_prop_value).set(password)
 $ie.image(img_prop.intern,img_prop_value).click
end

end