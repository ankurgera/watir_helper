require 'watir_helper/common_helpers'

module SpanHelper

#Highlight or Flash a span.
def flash_span(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.span(property.intern,propertyvalue).flash
end

#Check whether a span exists or not.
def exists_span(property,propertyvalue)
  propertyvalue=/#{propertyvalue}/
  $ie.span(property.intern,propertyvalue).exists?
end

end