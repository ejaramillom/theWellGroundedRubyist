year_sort = paintings.sort do |a,b|
  a.year <=> b.year
end

# => the code in the block will be used instead of the enumerable definition for the array

["2",1,5,"3",4,"6"].sort {|a,b| a.to_i <=> b.to_i }
# => [1, "2", "3", 4, 5, "6"]