# common array methods

Operation                       Method signature(s)

Retrieve single element         [index], slice(index)
Retrieve multiple elements      [index, length], [start..finish], slice(index,length), slice(start..finish),              
                                values_at(index1, index2...)
Retrieve nested elements        dig(index1, index2...)
Set single element              [index]=
Set multiple elements           [index, length]=, slice(index, length)
Delete elements                 slice!(index), slice!(index, length), slice!(start..finish)
Add element to beginning        unshift
Remove element from end         pop, pop(length)
Remove element from beginning   shift, shift(length)
Add element to end              push, push(el1, el2...), <<

a = []
a[0] = 'first' # => this is syntactic sugar for a.[] = (0, 'first')method
# => this is the same as a.slice(0) takes the element in position 0

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

thing.slice(1)
# => 'dog'



# dig

thing = [[1], 2, 3, [4, 5]]

thing[0]
# => [1]

thing[3][0]
# => 4

# same as dig
thing.dig(3, 0)
# => 4


# unshift, push, shift and pop

thing.unshift(0)
# => [0, [1], 2, 3, [4, 5]]

# push -> the difference with << is that it can take more than one argument

thing.push(7)
# => [0, [1], 2, 3, [4, 5], 7]

# opposites are shift and pop

thing.pop
# => 7

thing.shift
# => 0

thing
# => [[1], 2, 3, [4, 5]]

