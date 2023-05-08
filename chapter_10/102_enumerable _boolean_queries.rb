# Does the array include Louisiana?
states.include?("Louisiana")
# => true

# Do all states include a space?
states.all? {|state| state =~ / / }
# => false

# Does any state include a space?
states.any? {|state| state =~ / / }
# => true

# Is there one, and only one, state with "West" in its name?
states.one? {|state| state =~ /West/ }
# => true

# Are there no states with "East" in their names?
states.none? { |state| state =~ /East/ }
# => true 

# if it was a hash with key value pairs

# Do all states include a space?
states.all? {|state, abbr| state =~ / / }
# => false

# Is there one, and only one, state with "West" in its name?
states.one? {|state, abbr| state =~ /West/ }
# => true

# if the range can be expressed as a list of discrete elements, then those methods work; but if it can’t, as with a range of floats, then calling any of the methods triggers a fatal error

r = Range.new(1.0, 10.0)
# => 1.0..10.0
r.one? {|n| n == 5 }
# => TypeError (can't iterate from Float)

