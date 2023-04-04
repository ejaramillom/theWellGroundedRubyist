def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

fussy_method(20)

# you can also use rescue to send an explicit message

begin
  fussy_method(20)
rescue ArgumentError
  puts "That was not an acceptable number!"
end

# these two lines are equivalent:
# raise "Problem!"
# raise RuntimeError, "Problem!"