# ==, eql? and equal? are different methods to compare equality

a = Object.new
=> #<Object:0x00000101258af8>

b = Object.new
=> #<Object:0x00000101251d70>

a == a
=> true

a == b
=> false

a != b
=> true

a.eql?(a)
=> true

a.eql?(b)
=> false

a.equal?(a) # because they have the same identity
=> true

a.equal?(b)
=> false