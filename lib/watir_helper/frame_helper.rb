#******************************************************
#Frame methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module FrameHelper

#Click a link inside a frame.  
def click_link_inside_frame(browser_handle, frame_prop, frame_prop_val, link_prop, link_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).link(link_prop.intern, /#{link_prop_val}/).click
end

#Click a link(inside a frame), after clicking it a pop-up will come.
def click_link_with_popup_inside_frame(browser_handle, frame_prop, frame_prop_val, link_prop, link_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).link(link_prop.intern, /#{link_prop_val}/).click_no_wait
end

#Highlight or Flash a link inside a frame.  
def flash_link_inside_frame(browser_handle, frame_prop, frame_prop_val, link_prop, link_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).link(link_prop.intern, /#{link_prop_val}/).flash
end

#Link exists inside a frame.  
def link_exists_inside_frame?(browser_handle, frame_prop, frame_prop_val, link_prop, link_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).link(link_prop.intern, /#{link_prop_val}/).exists?
end

#Click a button inside a frame.  
def click_button_inside_frame(browser_handle, frame_prop, frame_prop_val, button_prop, button_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).button(button_prop.intern, /#{button_prop_val}/).click
end

#Click a button(inside a frame), after clicking it a pop-up will come.  
def click_button_with_popup_inside_frame(browser_handle, frame_prop, frame_prop_val, button_prop, button_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).button(button_prop.intern, /#{button_prop_val}/).click_no_wait
end

#Double Click a button.  
def double_click_button_inside_frame(browser_handle, frame_prop, frame_prop_val, button_prop, button_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).button(button_prop.intern, /#{button_prop_val}/).fire_event("ondblclick")
end

#Double Click a button(inside a frame), after clicking it a pop-up will come.  
def double_click_button_with_popup_inside_frame(browser_handle, frame_prop, frame_prop_val, button_prop, button_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).button(button_prop.intern, /#{button_prop_val}/).fire_event_no_wait("ondblclick")
end

#Highlight or Flash a button inside a frame.  
def flash_button_inside_frame(browser_handle, frame_prop, frame_prop_val, button_prop, button_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).button(button_prop.intern, /#{button_prop_val}/).flash
end

#Button exists inside a frame.  
def button_exists_inside_frame?(browser_handle, frame_prop, frame_prop_val, button_prop, button_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).button(button_prop.intern, /#{button_prop_val}/).exists?
end

#Click an image inside a frame.  
def click_image_inside_frame(browser_handle, frame_prop, frame_prop_val, image_prop, image_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).image(image_prop.intern, /#{image_prop_val}/).click
end

#Click an image(inside a frame), after clicking it a pop-up will come.  
def click_image_with_popup_inside_frame(browser_handle, frame_prop, frame_prop_val, image_prop, image_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).image(image_prop.intern, /#{image_prop_val}/).click_no_wait
end

#Double Click an image inside a frame.  
def double_click_image_inside_frame(browser_handle, frame_prop, frame_prop_val, image_prop, image_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).image(image_prop.intern, /#{image_prop_val}/).fire_event("ondblclick")
end

#Double Click an image(inside a frame), after clicking it a pop-up will come.  
def double_click_image_with_popup_inside_frame(browser_handle, frame_prop, frame_prop_val, image_prop, image_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).image(image_prop.intern, /#{image_prop_val}/).fire_event_no_wait("ondblclick")
end

#Highlight or Flash an image inside a frame.  
def flash_image_inside_frame(browser_handle, frame_prop, frame_prop_val, image_prop, image_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).image(image_prop.intern, /#{image_prop_val}/).flash
end

#Image exists inside a frame.  
def image_exists_inside_frame?(browser_handle, frame_prop, frame_prop_val, image_prop, image_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).image(image_prop.intern, /#{image_prop_val}/).exists?
end

#Click a checkbox inside a frame.  
def click_checkbox_inside_frame(browser_handle, frame_prop, frame_prop_val, checkbox_prop, checkbox_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).checkbox(checkbox_prop.intern, /#{checkbox_prop_val}/).click
end

#Clear a checkbox inside a frame.  
def clear_checkbox_inside_frame(browser_handle, frame_prop, frame_prop_val, checkbox_prop, checkbox_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).checkbox(checkbox_prop.intern, /#{checkbox_prop_val}/).clear
end

#Highlight or Flash a checkbox inside a frame.  
def flash_checkbox_inside_frame(browser_handle, frame_prop, frame_prop_val, checkbox_prop, checkbox_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).checkbox(checkbox_prop.intern, /#{checkbox_prop_val}/).flash
end

#Checkbox exists inside a frame.  
def checkbox_exists_inside_frame?(browser_handle, frame_prop, frame_prop_val, checkbox_prop, checkbox_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).checkbox(checkbox_prop.intern, /#{checkbox_prop_val}/).exists?
end

#Check whether a checkbox is checked/set or not inside a frame.  
def checkbox_checked_inside_frame?(browser_handle, frame_prop, frame_prop_val, checkbox_prop, checkbox_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).checkbox(checkbox_prop.intern, /#{checkbox_prop_val}/).checked?
end

#Click a radio button inside a frame.  
def click_radio_button_inside_frame(browser_handle, frame_prop, frame_prop_val, radio_prop, radio_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).radio(radio_prop.intern, /#{radio_prop_val}/).click
end

#Clear a radio button inside a frame.  
def clear_radio_button_inside_frame(browser_handle, frame_prop, frame_prop_val, radio_prop, radio_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).radio(radio_prop.intern, /#{radio_prop_val}/).clear
end

#Highlight or Flash a radio button inside a frame.  
def flash_radio_button_inside_frame(browser_handle, frame_prop, frame_prop_val, radio_prop, radio_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).radio(radio_prop.intern, /#{radio_prop_val}/).flash
end

#Radio button exists inside a frame.  
def radio_button_exists_inside_frame?(browser_handle, frame_prop, frame_prop_val, radio_prop, radio_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).radio(radio_prop.intern, /#{radio_prop_val}/).exists?
end

#Check whether a radio button is checked or not inside a frame.  
def radio_button_checked_inside_frame?(browser_handle, frame_prop, frame_prop_val, radio_prop, radio_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).radio(radio_prop.intern, /#{radio_prop_val}/).checked?
end

#Select from a select list inside a frame.  
def select_from_select_list_inside_frame(browser_handle, frame_prop, frame_prop_val, select_list_prop, select_list_prop_val, select_value)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).select_list(select_list_prop.intern, /#{select_list_prop_val}/).select(select_value)
end

#Clear selection from a Select list inside a frame.  
def clear_selection_from_select_list_inside_frame(browser_handle, frame_prop, frame_prop_val, select_list_prop, select_list_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).select_list(select_list_prop.intern, /#{select_list_prop_val}/).clearSelection
end

#Get all contents of a Select list inside a frame.  
def get_all_contents_of_select_list_inside_frame(browser_handle, frame_prop, frame_prop_val, select_list_prop, select_list_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).select_list(select_list_prop.intern, /#{select_list_prop_val}/).getAllContents
end

#Highlight or Flash a select list inside a frame.  
def flash_select_list_inside_frame(browser_handle, frame_prop, frame_prop_val, select_list_prop, select_list_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).select_list(select_list_prop.intern, /#{select_list_prop_val}/).flash
end

#Check whether a Select list exists or not inside a frame.  
def select_list_exists_inside_frame?(browser_handle, frame_prop, frame_prop_val, select_list_prop, select_list_prop_val)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).select_list(select_list_prop.intern, /#{select_list_prop_val}/).exists?
end

#Check whether a particular value is selected from a Select list or not inside a frame.  
def is_value_selected_from_select_list_inside_frame?(browser_handle, frame_prop, frame_prop_val, select_list_prop, select_list_prop_val, selected_value)
  browser_handle.frame(frame_prop.intern, /#{frame_prop_val}/).select_list(select_list_prop.intern, /#{select_list_prop_val}/).selected?(selected_value)
end

end



