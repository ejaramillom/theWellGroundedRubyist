# most iterators return an enumerator when called without a block

str = "Hello"
# => "Hello"
str.each_byte {|b| puts b }
# => 72
# => 101
# => 108
# => 108
# => 111
# => "Hello"

# the enumerator we get is equivalent to writing
str.enum_for(:each_byte)