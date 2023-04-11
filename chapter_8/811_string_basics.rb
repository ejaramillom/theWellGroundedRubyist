# basic string

'this is a string'

# this is also a string

"this is also a string"

# the difference is interpolation mechanism

puts "two plus two is #{2 + 2}"
puts 'two plus two is #{2 + 2}' # this won't interpolate

# we can also escape interpolation

puts "we are escaping interpolation \"\#{2 + 2}\"."

# and here some examples

puts "Backslashes (\\) have to be escaped in double quotes."
puts 'You can just type \ once in a single quoted string.'
puts "But whichever type of quotation mark you use..."
puts "...you have to escape its quotation symbol, such as \"."
puts 'That applies to \' in single-quoted strings too.'
puts 'Backslash-n just looks like \n between single quotes.'
puts "But it means newline\nin a double-quoted string."
puts 'Same with \t, which comes out as \t with single quotes...'
puts "...but inserts a tab character:\tinside double quotes."
puts "You can escape the backslash to get \\n and \\t with double quotes."

# other quoting mechanisms

puts "\n"
puts %q{You needn't escape apostrophes or quotation marks (', '', ", "") when
using %q.} # single quotes
puts %Q{You needn't escape apostrophes or quotation marks (', '', ", "") when
using %Q.} # double quotes
puts %{You needn't escape apostrophes or quotation marks (', '', ", "") when
using %.} # double quotes

# braces can be anything for % style notations

puts ""
puts %q-A string- # these are valid braces, the - (line), the bars (/) or anything
puts %Q/Another string/
puts %[Yet another string]

# HEREDOC examples (this is also a paragraph of strings)

text = <<EOM 
\n This is the first line of text in heredoc.
This is the second line.
Now were done.
EOM

puts text

# the delimiter EOM can be anything we want
# heredocs are double quoted strings

