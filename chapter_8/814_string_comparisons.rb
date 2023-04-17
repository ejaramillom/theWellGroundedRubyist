# comparing greater or smaller than is done based on ASCII number
# string class mixes the Comparable module 

"a" <=> "b"
# -1

"b" > "a"
# true

"a" > "A"
# true

"." > ","
# true

'string' == 'string' # they are different objects but comparison is for content, not ID
# true 

'string' == 'house'
# false 

'a'.eql?('a')
# true 

'a'.equal?('a') # this fails because they have different IDs
# false 