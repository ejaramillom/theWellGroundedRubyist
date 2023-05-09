array = [1,2,3,4,5,6,7,8,9,10]
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each_slice(3) {|slice| p slice } # moves 3 elements at the time
# => [1, 2, 3]
# => [4, 5, 6]
# => [7, 8, 9]
# => [10]
# => nil

array.each_cons(3) {|cons| p cons } # moves 1 element at the time
# => [1, 2, 3]
# => [2, 3, 4]
# => [3, 4, 5]
# => [4, 5, 6]
# => [5, 6, 7]
# => [6, 7, 8]
# => [7, 8, 9]
# => [8, 9, 10]
# => nil

