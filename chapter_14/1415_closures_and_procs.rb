def multiply_by(m)
  Proc.new {|x| puts x * m }
end

mult = multiply_by(10)
mult.call(12)
# => 120

def call_some_proc(pr)
  a = "irrelevant 'a' in method scope"
  puts a
  pr.call
end

a = "'a' to be used in Proc block"
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)

# => 'a' to be used in Proc block
# => irrelevant 'a' in method scope
# => 'a' to be used in Proc block

# this is known as a closure. Creating a closure is like packing a suitcase: wherever you open the suitcase, it contains what you put into it when you packed it. When you open a closure (by calling it), it contains what you put into it when it was created.

def make_counter
  n = 0
  return Proc.new { n += 1 }
end

c = make_counter
puts c.call
puts c.call
d = make_counter
puts d.call
puts c.call

# => 1 
# => 2
# => 1
# => 3

# this is a classic example of a closure in ruby