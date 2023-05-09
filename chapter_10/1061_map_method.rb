# map always returns an array
# the return size is always the same as the mapped object

names = %w(David Yukihiro Chad Amy)
# => ["David", "Yukihiro", "Chad", "Amy"]

names.map {|name| name.upcase }
# => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]

# symbols as method arguments
names.map(&:upcase)
# => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]

# map mantains an accumulator array

names.map!(&:upcase) # this forever modifies the object
# => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]
names
# => ["DAVID", "YUKIHIRO", "CHAD", "AMY"]