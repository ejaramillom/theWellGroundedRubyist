# instance methods

class Thing
  def talk
    puts "Hi!"
  end
end

# create an instance of a class and call an instance method

cosa = Thing.new
cosa.talk
# => 'Hi!'


# singleton methods 

thing = Object.new
def thing.talk
  puts "Hi!"
end
thing.talk
# => 'Hi!'

# singleton method - a class method

class Car
  def self.makes
     %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end

Car.makes
# => ['Honda', 'Ford', 'Toyota', 'Chevrolet', 'Volvo']

# Some objects are more individualizable than others

# Almost every object in Ruby can have methods added to it. The exceptions are instances of certain Numeric subclasses, including integer classes and floats, and symbols. If you try this,

# def 10.some_method; end

# you’ll get a syntax error. If you try this,

# class << 10; end

# you’ll get a type error and a message saying, “Can’t define singleton.” The same is true, in both cases, of floating-point numbers and symbols.