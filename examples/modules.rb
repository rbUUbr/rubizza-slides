# example of module
module MySuperGreeter
  def make_super_greet
    puts 'Super greet!'
  end
end

# class that prepends module
class Person
  prepend MySuperGreeter
end

# class that extends module
class StaticPerson
  extend MySuperGreeter
end

StaticPerson.make_super_greet # => Super greet!

p = Person.new
p.make_super_greet
