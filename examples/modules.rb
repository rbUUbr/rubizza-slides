# example of module
module MySuperGreeter
  def make_super_greet
    puts 'Super greet!'
  end
end

# class that includes module
class Person
  include MySuperGreeter
end
Person.ancestors # => [Person, MySuperGreeter, ....]

# class that prepends module
class PersonWithPrepend
  prepend MySuperGreeter
end
PersonWithPrepend.ancestors # => [MySuperGreeter, PersonWithPrepend, ....]

# class that extends module
class StaticPerson
  extend MySuperGreeter
end

StaticPerson.make_super_greet # => Super greet!

p = Person.new
p.make_super_greet
