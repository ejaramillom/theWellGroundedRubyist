if (class MyClass end)
  puts "Empty class definition is true!"
else
  puts "Empty class definition is false!"
end

# evaluates false
# nil has a boolean value of false

if (class MyClass; 1; end)
  puts "Class definition with the number 1 in it is true!"
else
  puts "Class definition with the number 1 in it is false!"
end

# evaluates true
# non empty class definitions evaluates to the last value they contain

if (def m; return false; end)
  puts "Method definition is true!"
else
  puts "Method definition is false!"
end

# evaluates true

if "string"
  puts "Strings appear to be true!"
else
  puts "Strings appear to be false!"
end

# evaluates true

if 100 > 50
  puts "100 is greater than 50!"
else
  puts "100 is not greater than 50!"
end 

# evaluates true