# enumerators have a state to know in which moment of their iteration they are in 

names = %w(David Yukihiro)
e = names.to_enum
puts e.next
puts e.next
e.rewind
puts e.next

# => David
# => Yukihiro
# => David
