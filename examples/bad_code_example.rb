# service object without state holding
class MakeGreet
  def self.call
    puts 'I made super greet!'
  end
end

MakeGreet.call # => I made super greet!

# service object that contains some logic
class RecalculateArray
  attr_accessor :numbers_array

  def self.call(numbers_array)
    new(numbers_array).call
  end

  def call
    select_even_from_array
    square
    make_greet
  end

  def initialize(numbers_array)
    @numbers_array = numbers_array
  end

  private

  def select_even_from_array
    numbers_array.select!(&:even?)
  end

  def square
    numbers_array.map! { |number| number**2 }
  end

  def make_greet
    MakeGreet.call
  end
end

# what if?
RecalculateArray.call(1) # => undefined method select! for 1:Fixnum


