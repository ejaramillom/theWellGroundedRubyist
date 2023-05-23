# a proc always needs a block, but a block not always is a proc 

[1,2,3].each {|x| puts x * 10 }

# this has a block, but it does not create a proc

# capture a block, then convert it into a proc object

def call_a_proc(&block)
  block.call
end

call_a_proc { puts "I'm the block...or Proc...or something." }

# also like this

p = Proc.new {|x| puts x.upcase }
%w{ David Black }.each(&p)