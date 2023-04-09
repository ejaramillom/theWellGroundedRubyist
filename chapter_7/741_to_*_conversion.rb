# to string

["one", "two", "three", 4, 5, 6].to_s

# inspect

array = [1, 2, 3, 4]
puts array.inspect # returns nil
p array # returns the array
array.display # occurs once at last count
puts ''

# to array

p [*array]

# the *array means un-arraying an array

# to integer and to float numerical conversion

x = 'i am a number'
y = 5
begin
  puts x + y # fails miserably, cannot convert string to integer
rescue 
  puts "you can't add strings and numbers"
end

begin
  print "Enter a number: "
  n = gets.chomp
  # puts n * 10  -> for this to work you need the following
  puts n.to_i * 10
rescue 
  puts "this makes no sense"
end

# you can use stricter conversions with Integer and Float

puts "123abc".to_i
begin 
  puts Integer("123abc")
rescue 
  puts "that is invalid for the method Integer"
end 

puts "-3xyz".to_f

begin 
  puts Float("-3xyz")
  puts Float("3")
rescue 
  puts "that is invalid for the method Float"
end 

# Conversion vs. typecasting

# When you call methods like to_s, to_i, and to_f, the result is a new object (or the receiver, if you’re converting it to its own class). It’s not quite the same as typecasting in C and other languages. You’re not using the object as a string or an integer; you’re asking the object to provide a second object that corresponds to its idea of itself (so to speak) in one of those forms.

# The distinction between conversion and typecasting touches on some important aspects of the heart of Ruby. In a sense, all objects are typecasting themselves constantly. Every time you call a method on an object, you’re asking the object to behave as a particular type. Correspondingly, an object’s “type” is really the aggregate of everything it can do at a particular time.

# The closest Ruby gets to traditional typecasting (and it isn’t very close) is the roleplaying conversion methods, described in section 7.4.4.

