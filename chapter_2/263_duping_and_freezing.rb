def change_string(thing)
  thing.replace('this is the result of replacing with the method')
end 

s = 'original line'
change_string(s)
puts s 

# duping and freezing in action

s = 'original line again'
change_string(s.dup) # this duplicates the object so it is not affected
puts s

begin 
  s.freeze
  change_string(s) # throws error because of freeze
  puts s
rescue FrozenError
  puts 'there was an error because we used freeze'
end

# there is also a method called clone
# if an object is frozen, a dup is not frozen
# if an object is frozen, a clone IS frozen