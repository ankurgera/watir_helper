require 'win32ole'

#Pop Up's Support
#   Watir now optionally installs AutoIt - http://www.autoitscript.com/
#   This is the prefered method for dealing wth pop ups, file requesters etc. 
# To enable the same, execute the following steps on your command prompt
#  - cd C:\ruby\lib\ruby\gems\1.8\gems\watir-1.6.2\lib\watir
#  - regsvr32 AutoItX3.dll
#  - You will get a pop-up of successful registration , press "OK" button on it.
# Now,You can easily handle pop-up's.

# Note:
#   The latest version of Watir is 1.6.5 whose close function doesn't work fine if we  
#   handle pop-up's in our scripts.But close function of Watir 1.6.2 works fine with
#   pop-up handling. 

#Create an OLE connection for handling pop-up's.
$ai=WIN32OLE.new("AutoItX3.Control")

#******************************************************
#Pop-up handling methods
#******************************************************

module PopupHelper

#Javascript pop-up's.  

#Click on a button on a pop-up.  
def click_a_button_on_a_popup(title,click_element_id)
$ai.WinWait(title,"",30)
$ai.WinActivate(title)
$ai.ControlClick(title,"",click_element_id)   
end
  
#Click on "OK" button on a javascript pop-up.  
def click_ok_on_javascript_popup(title)
click_a_button_on_a_popup(title,"","OK")
end

#Click on "Cancel" button on a javascript pop-up.  
def click_cancel_on_javascript_popup(title)
click_a_button_on_a_popup(title,"","Cancel")
end

#Click on "Yes" button on a javascript pop-up.  
def click_yes_on_javascript_popup(title)
click_a_button_on_a_popup(title,"","&Yes")
end

#Click on "No" button on a javascript pop-up.  
def click_no_on_javascript_popup(title)
click_a_button_on_a_popup(title,"","&No")
end

#File Dialogs
#Click on "Open" button on a file dialog pop-up.  
def click_open_on_file_dialog_popup(title)
click_a_button_on_a_popup(title,"&Open")
end

#Click on "Save" button on a file dialog pop-up.  
def click_save_on_file_dialog_popup(title)
click_a_button_on_a_popup(title,"&Save")
end

#Click on "Cancel" button on a file dialog pop-up.  
def click_cancel_on_file_dialog_popup(title)
click_a_button_on_a_popup(title,"Cancel")
end

#Save As
#Click on a button on a Save As or Open pop-up.  
def click_a_button_on_save_or_open_popup(title,file_path,click_element_id)
$ai.WinWait(title,"",30)
$ai.WinActivate(title)
$ai.ControlSend(title,"","Edit1",file_path)
$ai.ControlClick(title,"",click_element_id)
end

#Click on "Save" button on a Save As pop-up.  
def click_save_on_save_as_popup(title,save_file_path)
click_a_button_on_save_or_open_popup(title,save_file_path,"&Save")
end

#Click on "Cancel" button on a Save As pop-up.  
def click_cancel_on_save_as_popup(title,save_file_path)
click_a_button_on_save_or_open_popup(title,save_file_path,"Cancel")
end

#Open
#Click on "Open" button on an Open pop-up.  
def click_open_on_open_as_popup(title,open_file_path)
click_a_button_on_save_or_open_popup(title,open_file_path,"&Open")
end

#Click on "Cancel" button on an Open pop-up.  
def click_cancel_on_open_as_popup(title,open_file_path)
click_a_button_on_save_or_open_popup(title,open_file_path,"Cancel")
end

end

