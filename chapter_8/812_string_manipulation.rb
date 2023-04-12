# getting and setting substrings

string = "this is a cool string"
=> "this is a cool string"

string[5]
=> "i"

string[-12]
=>"o"

string[5, 10]
=>"is a cool " # we get 12 characters starting in position 5

string[7..14] # from 7 to 14 including 14
=> " a cool s"

string[7...14] # from 7 to 14 excluding 14
=> " a cool "

string["cool"] # if it does not find the substring returns nil
=> "cool"

string.slice("cool") # this does not affect the receiver, but using the bang operator does
=> "this is a string"

string["cool"] = "swift" # this changes the matching substring with the new assignation "swift"
puts string 
=> "this is a swift string"
# we can do this with all the previous matcher expressions

# combining strings

"a" + "b"
=>"ab" # the string we get is always a new string

"a" + "b" + "c"
=>"abc"

str = "Hi "
=> "Hi "

str << "there."
=> "Hi there."

str = "Hi "
=> "Hi "

"#{str}there."
=> "Hi there."
