# using blocks as procs

def capture_block(&block)
  puts "Got block as proc"
  block.call
end
capture_block { puts "Inside the block" }
# => this does a phantom call to Proc.new { puts "Inside the block" }

# using procs as blocks

p = Proc.new { puts "This proc argument will serve as a code block." }
capture_block(&p)

# this would throw an error because you are sending two blocks

capture_block(&p) { puts "This is the explicit block" }

# the & in capture_block(&p) does two things: it triggers a call to p ’s to_proc method, and it tells Ruby that the resulting Proc object is serving as a code block stand-in

# hash#to_proc

albums = { 1988 => "Straight Outta Compton", 
           1993 => "Midnight Marauders",
           1996 => "The Score", 
           2004 => "Madvillainy",
           2015 => "To Pimp a Butterfly" }

albums[2015]
# => "To pimp a butterfly"

[1988, 1996].map(&albums)
# => this runs a Hash#to_proc method call 

# using ranges
(1990..1999).map(&albums).compact
# => ["Midnight Marauders", "The Score"]