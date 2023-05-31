# threads can change variables in their local scope destructively

a = 1 
Thread.new { a = 2 }
puts a 
# => 2

# if you stop a thread, it also changes the thing

thing = Thread.new { Thread.stop; a = 3 }
puts a 
# => 2
thing.run 
# => #<Thread:0x3e443c dead>
puts a
# => 3

# some thread-local global variables

/(abc)/.match("abc")
t = Thread.new do
  /(def)/.match("def")
  puts "$1 in thread: #{$1}"
  # => $1 in thread: def
end.join
puts "$1 outside thread: #{$1}"
# => $1 outside thread: abc