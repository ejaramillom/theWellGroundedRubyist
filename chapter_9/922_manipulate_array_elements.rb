a = []
a[0] = 'first' # => this is syntactic sugar for a.[] = (0, 'first')method

a = %w(red orange yellow purple gray indigo violet)
# => ['red', 'orange', 'yellow', 'purple', 'gray', 'indigo', 'violet']

a[3, 2] # => bring 2 elements starting in position 3
# => ['purple', 'gray']

a[3, 2] = ['green', 'blue']

p a 
# => ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# slice

thing = %w(the dog ate the cat)

p thing.values_at(0, 2)
# => ['the', 'ate']


