#******************************************************
#Span methods
#******************************************************
require '../lib/watir_helper/common_helpers'

module SpanHelper

#Highlight or Flash a span.
def flash_span(browser_handle, property, property_value)
  browser_handle.span(property.intern, /#{property_value}/).flash
end

#Check whether a span exists or not.
def exists_span?(browser_handle, property, property_value)
  browser_handle.span(property.intern, /#{property_value}/).exists?
end

end