# Object has a tainted method that says true or false for potentially harmful inputs

x = gets
any user input here
# => "any user input here\n"

x.tainted?
# => true