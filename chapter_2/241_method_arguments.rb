thing = Object.new

def thing.one_arg(argument)
  puts "I require one and only one argument"
end

thing.one_arg(1, 2, 3) # shows ArgumentError, wrong number of arguments

# how to get any number of arguments

def thing.multiple_args(*args)
  puts 'this means the method can receive any number of arguments'
end 

def thing.default_args(a, b, c=1) # this means the default for c is 1
  puts 'c has a default value of #{c}'
end 

thing.default_args(1, 2)

def broken_args(x,*y,z=1) # this makes no sense
end

Required (R) 
def m(a,b,c) 
m(1,2,3) 
a = 1, b =2, c = 3
  
Optional (O) 
def m(*a) 
m(1,2,3) 
a = [1,2,3]
  
Default-valued
(D) def m(a=1) 
m
m(2) 
a = 1
a = 2
  
R/O def m(a,*b) 
m(1) 
a = 1, b = []
  
R/D def m(a,b=1) 
m(2)
m(2,3) 
a = 2, b = 1
a = 2, b = 3
  
D/O def m(a=1,*b) 
m
m(2) 
a = 1, b = []
a = 2, b = []
  
R/D/O def m(a,b=2,*c) 
m(1)
m(1,3)
m(1,3,5,7) 
a = 1, b = 2, c = []
a = 1, b = 3, c = []
a = 1, b = 3, c = [5,7]
  
R/D/O/R def m(a,b=2,*c,d) 
m(1,3)
m(1,3,5)
m(1,3,5,7)
m(1,3,5,7,9) 
a = 1, b = 2, c = [], d = 3
a = 1, b = 3, c = [], d = 5
a = 1, b = 3, c = [5], d = 7
a = 1, b = 3, c = [5,7], d = 9