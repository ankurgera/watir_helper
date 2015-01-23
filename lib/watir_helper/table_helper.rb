#******************************************************
#Table methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module TableHelper

#Highlight or Flash a table.
def flash_table(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).flash
end

#Check whether a table exists or not.
def exists_table?(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).exists?
end

#Get the table contents.
def get_table_contents(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).to_a
end

end

