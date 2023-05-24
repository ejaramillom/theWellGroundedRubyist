class C
  def talk
    puts "Method-grabbing test! self is #{self}."
  end
end
c = C.new
meth = c.method(:talk)

meth.owner
# => C
meth.call 
# => 'Method-grabbing test! self is #<C:0x00000101201a00>.'

# unbinding methods from objects

class D < C
end
d = D.new
unbound = meth.unbind
unbound.bind(d).call
# => 'Method-grabbing test! self is #<D:0x000001011d0220>.'

