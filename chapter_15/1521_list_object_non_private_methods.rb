# filter methods that modify a string

string = "Test string"
# => "Test string"
string.methods.grep(/case/).sort
# => [:casecmp, :casecmp?, :downcase, :downcase!, :swapcase, :swapcase!, :upcase, :upcase!]

