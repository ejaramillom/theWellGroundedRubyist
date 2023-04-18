# case transformation

string = 'David A. Black'

string.upcase
# => "DAVID A. BLACK"

string.downcase
# => "david a. black"

string.swapcase
# => "dAVID a. bLACK"

string = 'david'

string.capitalize # or capitalize!
# => 'David'

# formatting transformations

string.rjust(5) # puts extra spaces
# => '     David A. Black'

string.ljust(5)
# => 'David A. Black     '

string.rjust(5, '.')
# => '.....David A. Black'

string.center(25)
# => '     David A. Black     '

string = '   David A. Black   '

string.strip # rstrip and lstrip
# => 'David A. Black'

# all of them have bang methods

# content transformation

string.chop
# => 'David A. Blac'

'David A. Black\n'.chomp # the default target of chomp is \n
# => 'David A. Black'

string.chomp('ck')
# => 'David A. Bla'

string.clear # permanently changes the string
# => ''

string.replace('to be named later') # permanently changes the string
# => string -> 'to be named later'

string.delete('abc') # delete receives the same arguments as .count
# => 'Dvid A. blk'

string.crypt('34')
# => '3470EY.7YRmio'

'a'.succ # finds next highest string
# => 'b'


