# how the current object (self) is determined

# Top level of program 
Any code outside of other blocks 
main (built-in top-level default
object)

# Class definition 
class C
  self 
The class object C
  
# Module definition 
module M
  self
The module object M

# Method definitions 
  
# 1. Top level (outside any definition block): Whatever object is self when the method is called; top-level methods are available as private methods to all objects
def method_name
  self
  
# 2. Instance method definition in class: An instance of C, responding to method_name
class C
  def method_name
    self
    
# 3. Instance method definition in module: I. Individual object extended by M II. Instance of class that mixes in M
module M
  def method_name
    self
  
# 4. Singleton method on specific
object
def obj.method_name
self
obj