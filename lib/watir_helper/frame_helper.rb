require 'watir_helper/common_helpers'

module FrameHelper

#Click a link inside a frame.  
def click_link_inside_frame(frame_prop,frame_prop_val,link_prop,link_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  link_prop_val=/#{link_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).link(link_prop.intern,link_prop_val).click
end

#Click a button inside a frame.  
def click_button_inside_frame(frame_prop,frame_prop_val,button_prop,button_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  button_prop_val=/#{button_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).button(button_prop.intern,button_prop_val).click
end

#Click an image inside a frame.  
def click_image_inside_frame(frame_prop,frame_prop_val,image_prop,image_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  image_prop_val=/#{image_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).image(image_prop.intern,image_prop_val).click
end

#Click a checkbox inside a frame.  
def click_checkbox_inside_frame(frame_prop,frame_prop_val,checkbox_prop,checkbox_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  checkbox_prop_val=/#{checkbox_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).checkbox(checkbox_prop.intern,checkbox_prop_val).click
end

#Click a radio button inside a frame.  
def click_radio_button_inside_frame(frame_prop,frame_prop_val,radio_prop,radio_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  radio_prop_val=/#{radio_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).radio(radio_prop.intern,radio_prop_val).click
end

#Select from a select list inside a frame.  
def select_from_select_list_inside_frame(frame_prop,frame_prop_val,select_list_prop,select_list_prop_val,select_value)
  frame_prop_val=/#{frame_prop_val}/
  select_list_prop_val=/#{select_list_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).select_list(select_list_prop.intern,select_list_prop_val).select(select_value)
end

#Highlight or Flash a link inside a frame.  
def flash_link_inside_frame(frame_prop,frame_prop_val,link_prop,link_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  link_prop_val=/#{link_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).link(link_prop.intern,link_prop_val).flash
end

#Highlight or Flash a button inside a frame.  
def flash_button_inside_frame(frame_prop,frame_prop_val,button_prop,button_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  button_prop_val=/#{button_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).button(button_prop.intern,button_prop_val).flash
end

#Highlight or Flash an image inside a frame.  
def flash_image_inside_frame(frame_prop,frame_prop_val,image_prop,image_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  image_prop_val=/#{image_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).image(image_prop.intern,image_prop_val).flash
end

#Highlight or Flash a checkbox inside a frame.  
def flash_checkbox_inside_frame(frame_prop,frame_prop_val,checkbox_prop,checkbox_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  checkbox_prop_val=/#{checkbox_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).checkbox(checkbox_prop.intern,checkbox_prop_val).flash
end

#Highlight or Flash a radio button inside a frame.  
def flash_radio_button_inside_frame(frame_prop,frame_prop_val,radio_prop,radio_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  radio_prop_val=/#{radio_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).radio(radio_prop.intern,radio_prop_val).flash
end

#Highlight or Flash a select list inside a frame.  
def flash_select_list_inside_frame(frame_prop,frame_prop_val,select_list_prop,select_list_prop_val)
  frame_prop_val=/#{frame_prop_val}/
  select_list_prop_val=/#{select_list_prop_val}/
  $ie.frame(frame_prop.intern,frame_prop_val).select_list(select_list_prop.intern,select_list_prop_val).flash
end

end



