def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it's now #{x}"
  end
  puts "Outer x is still #{x}"
end

# this is its behavior
# Parameter x is 1
# Reassigned to x in block; it's now 11
# Parameter x is 2
# Reassigned to x in block; it's now 12
# Parameter x is 3
# Reassigned to x in block; it's now 13
# Outer x is still 100

class Temperature
  def Temperature.c2f(celsius)
    celsius * 9.0 / 5 + 32
  end
  
  def Temperature.now
    rand(0..100)
  end
end

celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
fahrenheit = Temperature.now

puts "The temperature is now: #{fahrenheit} degrees Fahrenheit."
puts "Celsius\tFahrenheit"

celsius.each do |c| # if we want fahrenheit to be a block-scope variable, we need to write             
                    # |c;fahrenheit|, unrelated to any other fahrenheit variable written previously
  fahrenheit = Temperature.c2f(c)
  puts "#{c}\t#{fahrenheit}"
end

puts fahrenheit

