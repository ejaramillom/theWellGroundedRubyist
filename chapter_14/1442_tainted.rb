# Object has a tainted method that says true or false for potentially harmful inputs

x = gets
any user input here
# => "any user input here\n"

x.tainted?
# => true

# Ruby also maintains a global variable called $SAFE —set to 0 by default. Setting $SAFE to 1 will prevent Ruby from running potentially unsafe methods like eval on tainted data by raising a SecurityError .