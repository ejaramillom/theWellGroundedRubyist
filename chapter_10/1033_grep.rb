# The Enumerable#grep method lets you select from an enumerable object based on the case-equality operator, === .

colors = %w(red orange yellow green blue indigo violet)
# => ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

colors.grep(/o/)
# => ["orange", "yellow", "indigo", "violet"]

miscellany = [75, "hello", 10...20, "goodbye"]
# => [75, "hello", 10...20, "goodbye"]

miscellany.grep(String)
# => ["hello", "goodbye"]

miscellany.grep(50..100)
# => [75]

# this works like:
# enumerable.select {|element| expression === element }

colors.grep(/o/) {|color| color.capitalize }
# => ["Orange", "Yellow", "Indigo", "Violet"]

# this works like:
# enumerable.select {|item| expression === item}.map {|item| ... }