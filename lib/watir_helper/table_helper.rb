#******************************************************
#Table methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module TableHelper

#Highlight or Flash a table.
def flash_table(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).flash
end

#Check whether a table exists or not.
def exists_table?(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).exists?
end

#Get contents of a particular row no. of a table
def get_row_contents(browser_handle, property, property_value, row_num)
  browser_handle.table(property.intern, /#{property_value}/)[row_num - 1].text
end

def get_a_cell_content(browser_handle, property, property_value, row_num, col_num)
  browser_handle.table(property.intern, /#{property_value}/)[row_num - 1][col_num - 1].text
end

#Get no. of rows of a table
def get_nor_table(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).rows.length
end

#Get no. of cols of a table
def get_noc_table(browser_handle, property, property_value)
  browser_handle.table(property.intern, /#{property_value}/).row.cells.length
end

#Get the table contents.
def get_table_contents(browser_handle, property, property_value)
  content_arr = []	
  nor = get_nor_table(browser_handle, property, property_value)
  noc = get_noc_table(browser_handle, property, property_value)
  nor.times do |row_num|
  	noc.times do |col_num|
     content_arr << browser_handle.table(property.intern, /#{property_value}/)[row_num][col_num].text
  	end
  end
  content_arr
end

end

