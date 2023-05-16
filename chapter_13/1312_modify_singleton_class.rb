# to edit the singleton class of the object you do this

class << object
  # method and constant definitions here
end

str = "I am a string"

class << str
  def twice
    self + " " + self
  end
end

puts str.twice

# => I am a string I am a string

# the method twice is a singleton method of str

# Differentiating def obj.some_method and class << obj; def some_method
  
# This question often arises: is there any difference between defining a method directly  on an object (using the def obj.some_method notation) and adding a method to an object’s singleton class explicitly (by doing class << obj; def some_method)? The answer is that there’s one difference: constants are resolved differently. If you have a top-level constant N, you can also define an N inside an object’s singleton class:

N = 1
obj = Object.new

class << obj
  N = 2
end

# Given this sequence of instructions, the two ways of adding a singleton method to obj differ in which N is visible from within the method definition:

def obj.a_method
  puts N
end

class << obj
  def another_method
    puts N
  end
end

obj.a_method
obj.another_method

# => Output: 1 (outer-level N)
# => Output: 2 (N belonging to obj’s singleton class)
  
# It’s relatively unusual for this difference in the visibility of constants to affect your code; in most circumstances, you can regard the two notations for singleton method definition as interchangeable. But it’s worth knowing about the difference, because it may matter in some situations and it may also explain unexpected results.