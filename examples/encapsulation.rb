# encapsulation example
class SuperSecuredPerson
  attr_accessor :name
  attr_reader :surname
  attr_writer :id

  def initialize
    @name = 'Kirill'
    @surname = 'Tatchihin'
    @id = 123
  end

  def access_method
    puts 'all my methods are secured from external usage'
    puts 'but you can call them from public methods of this class'
    my_private_puts
    my_protected_puts
  end

  private

  def my_private_puts
    puts 'my own private puts'
  end

  protected

  def my_protected_puts
    puts 'my own protected puts'
  end
end

p = SuperSecuredPerson.new
p.access_method
p.my_protected_puts # => NoMethodError: protected method called
p.name # => 'Kirill'
p.name = 'Vlad' # => 'Vlad'
p.surname # => 'Tatchihin'
p.surname = 'Rnd' # => undefined method `surname='
