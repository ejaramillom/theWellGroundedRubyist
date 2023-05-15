# enumerator is an object, not a method
# an enumerator is an enumerable object

e = Enumerator.new do |y|
  y << 1
  y << 2
  y << 3
end

# y is a yielder, an instance of Enumerator::Yielder , automatically passed to your block. Yielders encapsulate the yielding scenario that you want your enumerator to follow. In this example, what we’re saying is when you (the enumerator) get an each call, please take that to mean that you should yield 1, then 2, then 3. The << method (in infix-operator position, as usual) serves to instruct the yielder as to what it should yield.

e = Enumerator.new do |y|
  (1..3).each {|i| y << i }
end

# this is the same as before

e = Enumerator.new do # This is what you don’t do!
  yield 1
  yield 2
  yield 3
end
