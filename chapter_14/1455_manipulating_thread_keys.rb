# one can summon the keys of a thread even when it is dead already

t = Thread.new do
  Thread.current[:message] = "Hello"
end
# => #<Thread:0x00055d11514f6b8@(irb):1 run>
t.join
# => #<Thread:0x00055d11514f6b8@(irb):1 dead>
p t.keys
puts t[:message]

# => [:message]
# => Hello