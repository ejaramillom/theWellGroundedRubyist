# Like Proc.new , the lambda method returns a Proc object, using the provided code block as the function body:

lam = lambda { puts "A lambda!" }
# => #<Proc:0x0000010299a1d0@(irb):2 (lambda)>
lam.call
# => A lambda!

# DIFFERENCE BETWEEN LAMBDAS AND PROCS 

# First and most importantly, lambda-flavored procs don’t like being called with the wrong number of arguments. Unlike traditional procs, they’re fussy

# Second, lambdas require explicit creation. Wherever Ruby creates Proc objects implicitly, they’re regular procs and not lambdas.

# lambdas differ from procs in how they treat the return keyword. return inside a lambda triggers an exit from the body of the lambda to the code context immediately containing the lambda. return inside a proc triggers a return from the method in which the proc is being executed.

def return_test
  l = lambda { return }
  l.call
  puts "Still here!"
  p = Proc.new { return }
  p.call
  puts "You won't see this message!"
end

return_test
# => "Still here!"

# stabby lambda constructor

lam = -> { puts "hi" }
# => #<Proc:0x0000010289f140@(irb):1 (lambda)>
lam.call
# => hi

lam = ->(thing, stuff) { puts "we have #{thing} and #{stuff}" }



