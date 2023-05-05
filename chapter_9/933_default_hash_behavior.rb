h = Hash.new(0)
h['No such key!']
# => 0

# set non existence keys in a hash

h = Hash.new { |hash, key| hash[:key] = 0 }
# => defaults the value to 0 if you pass a key that does not exist

