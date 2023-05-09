str = "abcde"
str.each_byte {|b| p b }
# => 97
# => 98
# => 99
# => 100
# => 101

str = "abcde"
str.each_char {|c| p c }
# => "a"
# => "b"
# => "c"
# => "d"
# => "e"

str = "100\u20ac"
# => "100?"
str.each_codepoint {|cp| p cp }
# => 49
# => 48
# => 48
# => 8364

str = "This string\nhas three\nlines"
str.each_line {|l| puts "Next line: #{l}" }

# => Next line: This string
# => Next line: has three
# => Next line: lines

# override a global variable such as '/' which is the character of line jump definition

str = "David!Alan!Black"
$/ = "!"
str.each_line {|l| puts "Next line: #{l}" }

# => Next line: David!
# => Next line: Alan!
# => Next line: Black