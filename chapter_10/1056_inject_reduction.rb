[1,2,3,4].inject(0) {|accumulator,value| accumulator + value }
# => 10

# The accumulator is initialized to 0, courtesy of the 0 argument to inject .

# The first time through the iteration —the code block— acc is 0, and n is set to  1 (the first item in the array). The result of the calculation inside the block is 0 + 1, or 1.

# The second time through, acc is set to 1 (the block’s result from the previous time through), and n is set to 2 (the second element in the array). The block therefore evaluates to 3.

# The third time through, acc and n are 3 (previous block result) and 3 (next value in the array). The block evaluates to 6.

# The fourth time through, acc and n are 6 and 4. The block evaluates to 10.

# Because this is the last time through, the value from the block serves as the return value of the entire call to inject . Thus the entire call evaluates to 10, as shown by irb .