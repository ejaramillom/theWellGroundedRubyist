r = Range.new(1,100)
# => 1..100

r = 1..100 # include 1 and 100
# => 1..100

r = 1...100 # exclude 1 and 100
# => 1...100

r.begin
# => 1

r.end 
# => 100

r.exclude_end?
# => false 

r = "a".."z"
r.cover?("a")
#  => true 

r.cover?([])
# => false 

r.include?('b')
# => true 

r = "z".."a"
r.cover?("a")
# => false 

# the inverted range does not work in comparing the inclusion

# a set is a unique collection of objects

