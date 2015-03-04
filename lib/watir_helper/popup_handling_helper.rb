#******************************************************
#Pop-up handling methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module PopupHelper

#Javascript pop-up's

#Click a button on a pop-up.
def click_button_popup(title, button_id)
  window = RAutomation::Window.new(:title => /#{title}/)
  window.button(:value => /#{button_id}/).click
end

#Click "OK" button on a javascript pop-up.
def click_ok_js_popup(title)
  click_button_popup(title, "OK")
end

#Click "Cancel" button on a javascript pop-up.
def click_cancel_js_popup(title)
  click_button_popup(title, "Cancel")
end

#Click "Yes" button on a javascript pop-up.
def click_yes_js_popup(title)
  click_button_popup(title, "&Yes")
end

#Click "Yes" button on a javascript pop-up.
def click_yes_to_all_js_popup(title)
  click_button_popup(title, "Yes To &All")
end

#Click "No" button on a javascript pop-up.
def click_no_js_popup(title)
  click_button_popup(title, "&No")
end

#File Dialogs

#Click "Open" button on a file dialog pop-up.
def click_open_file_dialog_popup(title)
  click_button_popup(title, "&Open")
end

#Click "Save" button on a file dialog pop-up.
def click_save_file_dialog_popup(title)
  click_button_popup(title, "&Save")
end

#Click "Cancel" button on a file dialog pop-up.
def click_cancel_file_dialog_popup(title)
  click_button_popup(title, "Cancel")
end

#Click "Run" button on a file dialog pop-up.
def click_run_file_dialog_popup(title)
  click_button_popup(title, "&Run")
end

#Save As or Open As pop-up's

#Click a button on 'Save As' or 'Open As' pop-up's.
def click_button_saveas_or_openas_popup(title, file_path, button_id)
  window = RAutomation::Window.new :title => /#{title}/
  window.text_field(:class => "Edit").set file_path
  window.button(:value => /#{button_id}/).click
end

#Click "Save" button on 'Save As' pop-up's.
def click_save_saveas_popup(title, save_file_path)
  click_button_saveas_or_openas_popup(title, save_file_path, "&Save")
end

#Click "Cancel" button on 'Save As' pop-up's.
def click_cancel_saveas_popup(title, save_file_path)
  click_button_saveas_or_openas_popup(title, save_file_path, "Cancel")
end

#Click "Open" button on 'Open As' pop-up's.
def click_open_openas_popup(title, open_file_path)
  click_button_saveas_or_openas_popup(title, open_file_path, "&Open")
end

#Click "Cancel" button on 'Open As' pop-up's.
def click_cancel_openas_popup(title, open_file_path)
  click_button_saveas_or_openas_popup(title, open_file_path, "Cancel")
end

end