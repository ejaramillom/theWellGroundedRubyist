# symbols are:
# immutable
# unique

# also:
# Ruby uses symbols to keep track of all the names for variables, methods and constants

Symbol.all_symbols.size
# => 3892

abc = 1 
# => 1

Symbol.all_symbol.size
# => 3893

Symbol.all_symbol.grep(/abc/) # instead of include?, if you put /abc/ in there, YOU are creating that symbol, :abc
# => [:abc]

