thing = [1,2,[3,4,[5],[6,[7,8]]]]
# => [1, 2, [3, 4, [5], [6, [7, 8]]]]

thing.flatten
# => [1, 2, 3, 4, 5, 6, 7, 8]

thing.flatten(1)
# => [1, 2, 3, 4, [5], [6, [7, 8]]]

thing.flatten(2)
# => [1, 2, 3, 4, 5, 6, [7, 8]]

flatten! # => permanently changes the array

thing.reverse # => or reverse!
# => [8, 7, 6, 5, 4, 3, 2, 1]

thing.join # creates a string
# => '87654321'

thing.join(', ')
# => '8, 7, 6, 5, 4, 3, 2, 1'

thing * '-'
# => '8-7-6-5-4-3-2-1'

thing = [3, 4, 2, 3, 2, 5, 8, 7, 1, 2]

thing.uniq # => gives a new array
# => [1, 2, 3, 4, 5, 7, 8]

# => comparison is made using the == method

thing = [3, 4, 2, 3, 2, nil, 5, 8, 7, 1, 2, nil]

thing.compact # => erase the nil elements
# => [3, 4, 2, 3, 2, 5, 8, 7, 1, 2]
