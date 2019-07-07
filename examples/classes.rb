# class with logic and state
class Person
  attr_accessor :name
  attr_reader :id

  def initialize(name, id)
    @name = name
    @id = id || generate_ultra_secured_id # super secured private method call
  end

  def say_hello!
    puts 'Hello from Person!'
  end

  private

  def generate_ultra_secured_id
    Random.new(5).rand
  end
end

kirill = Person.new('Kirill', nil)
kirill.say_hello! # => 'Hello from Person!'
kirill.generate_ultra_secured_id # => private method `generate_ultra_secured_id'

# but...
kirill.send(:generate_ultra_secured_id) # => 0.22199
