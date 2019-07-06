# all is object
number = 1
number.class # => Integer
c = Class
c.class # => Class
c.class.class # => Class

# all has base classes
number = 1
number.class.superclass # => Numeric
Class.superclass # => Module
BasicObject.superclass # => nil

# all objects has methods
hash = {} # => a.k.a Hash.new
hash[:first] = 1
hash[:second] = 2
hash.each_pair do |key, value|
  puts key # => first, second
  puts value # => 1, 2
end

# objects provides interface part
hash = Hash.new(0) # => add default value for non-existing keys
hash[:first] = 1
hash[:second] = 2
hash[:third] # => 0

# about ancestors
number = 1
number.class # => Integer
number.ancestors
