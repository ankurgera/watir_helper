require 'watir_helper/button_helper'
include ButtonHelper
require 'watir_helper/checkbox_helper'
include CheckBoxHelper
require 'watir_helper/frame_helper'
include FrameHelper
require 'watir_helper/image_helper'
include ImageHelper
require 'watir_helper/link_helper'
include LinkHelper

#Pop Up's Support
#   Watir now optionally installs AutoIt - http://www.autoitscript.com/
#   This is the prefered method for dealing wth pop ups, file requesters etc. 
# To enable the same, execute the following steps on your command prompt
#  - cd C:\ruby\lib\ruby\gems\1.8\gems\watir-1.6.2\lib\watir
#  - regsvr32 AutoItX3.dll
#  - You will get a pop-up of successful registration , press "OK" button on it.
# Now,You can easily handle pop-up's.
require 'watir_helper/popup_handling_helper'
include PopupHelper

require 'watir_helper/radio_button_helper'
include RadioButtonHelper
require 'watir_helper/select_list_helper'
include SelectListHelper
require 'watir_helper/textfield_helper'
include TextFieldHelper
require 'watir_helper/validations_helper'
include ValidationsHelper
require 'watir_helper/browser_helper'
include BrowserHelper
require 'watir_helper/login_helper'
include LoginHelper
require 'watir_helper/span_helper'
include SpanHelper
require 'watir_helper/table_helper'
include TableHelper
require 'watir_helper/div_helper'
include DivHelper











