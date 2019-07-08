# base class
class Person
  def call_me
    'Im person, call me Kirill'
  end
end

# child class
class Child < Person
  def call_me(name)
    super() + " Im #{name} also"
  end
end

child = Child.new
child.call_me('Kirill')
