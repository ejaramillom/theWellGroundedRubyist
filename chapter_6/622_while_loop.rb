n = 1
while n < 11
  puts n 
  n = n + 1
end 
puts "Done!"

# alternatively

m = 1
begin
  puts m 
  m = m + 1
end while m < 11

# putting the while at the end prints the value at least one time

# until loop: is the reverse logic of while

o = 1
until 0 > 10
  puts o 
  o = o + 1 
end 