pr = Proc.new {|x| puts "Called with argument #{x}" }
pr.call(100)

# => called with argument 100

pr = Proc.new {|x| p x }
# => #<Proc:0x000001029a8960@(irb):1>

# if you don't pass any arguments

pr.call
# => nil

# if you pass more arguments than needed

pr.call(1,2,3)
# => 1
