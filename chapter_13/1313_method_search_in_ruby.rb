# an object looks for a method to execute in this order:

object = D.new
object.x

# => goes to module X; end                                       (prepended to singleton class)
# => then goes to class << object; prepend X; include Y; end     (the singleton class)
# => then goes to module Y; end                                  (included in singleton class)
# => theng goes to module M; end                                 (prepended to class)
# => then goes to class D < C; prepend M; include N; end 
# => then goes to module N; end                                  (included in class)
# => then goes to class C; end                                   (main class of the object)
# => then goes to class Object; include Kernel                   (Object class)
# => then goes to module Kernel; end                             (Kernel class, included in Object class)
# => finally to class BasicObject; end                           (BasicObject class)

# include modules in singleton class

class Person
  attr_accessor :name
end

david = Person.new
david.name = "David"

joe = Person.new
joe.name = "Joe"

ruby = Person.new
ruby.name = "Ruby"

def david.name
  "[not available]"
end

puts "We've got one person named #{joe.name}, "
puts "one named #{david.name},"
puts "and one named #{ruby.name}."

# => We've got one person named Joe,
# => one named [not available],
# => and one named Ruby.

# we created a singleton method for david, so we are hiding his name
# we don't want to write the method every time, so we create a module

module Secretive
  def name
    "[not available]"
  end
end

# we can tell joe to be secretive:

class << joe
  include Secretive
end

# => We've got one person named [not available],
# => one named [not available],
# => and one named Ruby.

# to ask for modules of an object, you declare the ancestors

class C
  include M
end

class << c
  p ancestors
end

# or 
class << joe
  p ancestors
end

