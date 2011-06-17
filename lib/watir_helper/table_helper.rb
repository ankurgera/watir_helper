require 'watir_helper/common_helpers'

module TableHelper

#Highlight or Flash a table.
def flash_table(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.table(property.intern,propertyvalue).flash
end

#Check whether a table exists or not.
def exists_table(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.table(property.intern,propertyvalue).exists?
end

#Return the table contents.
def return_table_contents(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.table(property.intern,propertyvalue).to_a
end

end

