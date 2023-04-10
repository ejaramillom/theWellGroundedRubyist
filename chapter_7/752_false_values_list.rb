# the only objects that evaluate to 'false' are: false and nil

expression
evaluation
boolean value

1
1
true

0
0
true

1+1
2
true

true
true
true 

false 
false 
false 

nil
nil 
false 

"string"
"string"
true

""
""
true

puts "string"
nil
false 

100 > 50 
true 
true 

x = 10 
10 
true 

def x; end
:x 
true 

class C; end 
nil 
false 

class C; 1; end 
1
true 