string = "ruby is a cool language"

string.include?('ruby')
# => true 

string.include?('english')
# => false

string.start_with?('ruby') # also supports regexp
# => true 

string.end_with?('!!!')
# => false 

string.empty?
# => false

''.empty? # different to nil, does not belong to nil class or false class 
# => true 

string.size
# => 24

string.count("a")
# => 3

string.count("g-m")
# => 5

string.count("A-Z") # characters are case sensitive
# => 0

string.count("aey. ") # any of the characters in the string
# => 10

string.count("^aey. ") # negated search
# => 14

string.count("ag-m", "^l")
# => 6

string.index("cool") # the position of the first character
# => 10

"a".ord # we can ask for the corresponding integer for the letter
# => 97

97.chr # the character of the integer
# => "a"