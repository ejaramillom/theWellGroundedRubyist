a = [1,2,3,4,5,6,7,8,9,10]
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.find_all {|item| item > 5 }
# => [6, 7, 8, 9, 10]

a.select {|item| item > 100 }
# => []

# (Arrays, hashes, and sets have a bang version, select! , that reduces the collection permanently to only those elements that passed the selection test. There’s no find_all! synonym; you have to use select! .)

a.reject {|item| item > 5 }
# => [1, 2, 3, 4, 5]