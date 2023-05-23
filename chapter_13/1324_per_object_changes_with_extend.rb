# Object#extend changes the behavior of a single object

# we would normally do this in the class or model

class << carlos
  include Secretive
end

# instead of doing that we could do

module Secretive
  def name
    "[not available]"
  end
end

class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"
joe = Person.new
joe.name = "Joe"
ruby = Person.new
ruby.name = "Ruby"
david.extend(Secretive)
ruby.extend(Secretive)

puts "We've got one person named #{joe.name}, " +
"one named #{david.name}, " +
"and one named #{ruby.name}."

# adding class methods with Extend 

# instead of doing this

class Car
  class << self
    def makes
      %w{ Honda Ford Toyota Chevrolet Volvo }
    end
  end
end

# or this

class Car
  def self.makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end

# we can do this after the class has been created

module Makers
  def makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end

class Car
  extend Makers
end

# or this

Car.extend(Makers)

# Either way, the upshot is that the class object Car now has access to the makes method. You can verify it this way

p Car.singleton_class.ancestors
# [#<Class:Car>, Makers, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]

