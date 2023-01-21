puts "hello. please enter a celsius temperature "
celsius = gets.chomp
fahrenheit = (celsius.to_i * 9 / 5) + 32
print "The fahrenheit equivalent is: #{fahrenheit}"
puts "."

# reading from a file and writing to it

puts "Reading Celsius temperature value from data file..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The number is " + num
print "Result: "
puts fahrenheit

# writing the result to a File

puts "Saving result to a file temp.out"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close 
