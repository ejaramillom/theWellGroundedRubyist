[1, 2, 3].concat([4, 5, 6]) # => changes the receiver, does not create a new one
# => [1, 2, 3, 4, 5, 6]

a = [1, 2, 3]

b = a + [7 ,8]
# => [1, 2, 3, 7, 8] this did not change 'a' array

a.replace([4, 5, 6]) # => original content is replaced
# => [4, 5, 6]

# this is different than writing a = [4, 5, 6]
