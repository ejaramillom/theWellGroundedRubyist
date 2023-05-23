# instance of Proc class 

pr = Proc.new { puts "Inside a Proc's block" }

pr.call
# => 'Inside a Proc's block

# the kernel#proc method is an alias for Proc.new

pr = proc { puts "Inside a Proc's block" }

# this is the sames as the previous definition

