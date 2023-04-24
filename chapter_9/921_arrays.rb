# create arrays

a = Array.new(3, 5) # this is a method, it returns an object of a class 
# => ["5", "5", "5"]

b = Array.new(3)
# => [nil, nil, nil]

c = Array.new(3) { |i| 10 * (i + 1) }
# => [10, 20, 30]

e = Array.new(3, "abc") # here the problem is that "abc" is the same object for all the positions, so you have to change the id if you want different objects

f = Array.new(3) { "abc" } # here the object id is different for each "abc" 



# literal array constructor

g = []

h = [1, 2, "three", ["a", [nil]]] # can be nested at any amount of levels

[1, 2, 3][1] # => 2

# transform to array

thing = 'A string'
thing.respond_to?(:to_ary)
# => false 

thing.respond_to?(:to_a)
# => false 

Array(thing)
# => ['A string']

def thing.to_a 
  split(//)
end 
# => Array(string) => ["A", "", "s", "t", "r", "i", "n", "g"]



# %w array constructor

%w(joe rogan uncle) # => this takes any valid delimiter
# => ['joe', 'rogan', 'uncle']

# use %W for double quotes

# %i array constructor
%i(thing stuff cosa)
# => [:thing, :stuff, :cosa]



# try_convert family

# Array, Hash, IO, Regexp, String implement this method to try and convert its class.

thing = Object.new

def obj.to_ary
  [1, 2, 3]
end 
# => :to_ary

Array.try_convert(obj)
# => [1, 2, 3]


