# reverse each

[1,2,3].reverse_each {|e| puts e * 10 }
# => 30
# => 20 
# => 10

# each with index

names = ["George Washington", "John Adams", "Thomas Jefferson", "James Madison"]
# => ["George Washington", "John Adams", "Thomas Jefferson", "James Madison"]

names.each_with_index do |president, index|
  puts "#{index+1}. #{president}"
end

# => 1. George Washington
# => 2. John Adams
# => 3. Thomas Jefferson
# => 4. James Madison

# each index does not work on hashes

%w(a b c).each_index {|i| puts i }
# => 0

letters = {"a" => "ay", "b" => "bee", "c" => "see" }
# => {"a"=>"ay", "b"=>"bee", "c"=>"see"}

letters.each_with_index {|(key,value),i| puts i }
# => 0
# => 1
# => 2
# => {"a"=>"ay", "b"=>"bee", "c"=>"see"}

letters.each_index {|(key,value),i| puts i }
# => NoMethodError (undefined method `each_index' for {"a"=>"ay", "b"=>"bee", "c"=>"see"}:Hash)

# one way to solve it is using each.with_index for hashes

array = %w{ red yellow blue }
# => ["red", "yellow", "blue"]

array.each.with_index do |color, i|
  puts "Color number #{i} is #{color}."
end

