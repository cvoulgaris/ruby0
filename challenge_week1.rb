def link_to (text, address)
  return "<a href=" + "\"" + "#{address}" + "\"" + ">" + "#{text}" + "</a>"
end

def content_tag(tag)
  if tag.class != Symbol
    puts "Please describe the tag you want to pass as a symbol, like ':mytag'"
    return "error"
  else
    return "<#{tag}>" + yield + "</#{tag}>"
  end
end

# some stuff sent to the methods to test them.
puts link_to("Bloc.io Rulez","www.bloc.io")
puts content_tag(:div) {"Hello world"}