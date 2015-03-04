#******************************************************
#Span methods
#******************************************************
require File.expand_path('common_helpers', File.dirname(__FILE__))

module SpanHelper

#Click a span element	
def click_span(browser_handle, property, property_value)
  browser_handle.span(property.intern, /#{property_value}/).click
end

#Highlight or Flash a span.
def flash_span(browser_handle, property, property_value)
  browser_handle.span(property.intern, /#{property_value}/).flash
end

#Check whether a span exists or not.
def exists_span?(browser_handle, property, property_value)
  browser_handle.span(property.intern, /#{property_value}/).exists?
end

end