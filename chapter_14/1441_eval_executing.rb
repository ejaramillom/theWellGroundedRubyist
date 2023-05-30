# DANGEROUS METHODS

eval('2+2')
# => 4

# this is a method with a name someone typed in

print "Method name: "
m = gets.chomp
eval("def #{m}; puts 'Hi!'; end")
eval(m)
# => 'Hi!'
