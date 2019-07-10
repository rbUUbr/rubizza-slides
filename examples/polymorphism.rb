class XmlParser
  def parse
    puts 'Im XML parser'
  end
end

class JsonParser
  def parse
    puts 'Im JSON parser'
  end
end

def parse_data(parser)
  parser.parse
end

parse_data(JsonParser.new) # => 'Im JSON parser'

# what if?
spy_parser = { sample: 'value' }
parse_data(spy_parser) #=> NoMethodError: undefined method `parse' for Hash
