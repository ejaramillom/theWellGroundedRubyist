# private setter (=) methods
class Dog
  attr_reader :age, :dog_years

  def dog_years=(years)
    @dog_years = years
  end 

  def age=(years)
    @age = years
    self.dog_years = years * 7 # this is calling a private method
    # if you do it another way, it wont work
  end 

  private :dog_years=
end 

rover = Dog.new
rover.age = 10 # this is calling a public method

puts "rover is #{rover.dog_years} in dog years"

# if you do

dog = self # changing the explicit receiver
dog.dog_years = years * 7

# execution is halted by a fatal error:

# in `age=': private method `dog_years=' called for
# <Dog:0x3c0fdc @age=10> (NoMethodError)

# Ruby’s policy is that it’s OK to use an explicit receiver for private setter methods, but you have to thread the needle by making sure the receiver is exactly self .