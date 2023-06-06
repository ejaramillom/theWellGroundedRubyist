class Person
  attr_accessor :name, :age
  def initialize(name)
    @name = name
  end
end

joe = Person.new("Joe")
p joe.instance_variables
# => [:@name]

joe.age = 37
p joe.instance_variables
# => [:@name, :@age]

# The irb underscore variable
# If you run local_variables in a new irb session, you’ll see an underscore:

local_variables
# => [:_]

# The underscore is a special irb variable: it represents the value of the last expression evaluated by irb. You can use it to grab values that otherwise will have disappeared:

Person.new("David")
# => #<Person:0x000001018ba360 @name="David">
david = _
# => #<Person:0x000001018ba360 @name="David">

# => Now the Person object is bound to the variable david.