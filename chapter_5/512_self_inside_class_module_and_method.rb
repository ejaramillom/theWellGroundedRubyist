# self in class and module

class C 
  puts 'Im in C class so self is C'
  puts self # output -> C
  module M 
    puts 'Nested module C::M'
    puts self # output -> C::M
  end
  puts 'back in the outer level'
  puts self # outputs -> C 
  puts ""
end 

# self in instance method definitions

class B
  def thing
    puts 'Class B, method thing'
    puts "my names is #{self}"
  end 
end 

instance = B.new
instance.thing
puts "That was a call to thing by: #{instance}"
puts ""

# self in singleton methods

obj = Object.new
def obj.show_me
  puts "we are inside the singleton method show_me of #{self}"
end 

obj.show_me
puts "Back from call to show me by #{obj}"