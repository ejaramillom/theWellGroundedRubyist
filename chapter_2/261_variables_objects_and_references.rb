str = "Hello"
abc = str
str.replace("Goodbye")
puts str
puts abc

# the reference changed the pointer of abc

str = "Hello"
abc = str
str = "Goodbye"
puts str
puts abc

# but here, the assignment is direct to the variable so ruby wipes str of its value and assigns a new one to it
