puts String.instance_methods.sort
puts String.instance_methods(false).sort # this way you would avoid listing the methods of the parents of the class, only the objects immediate class methods

# Examining objects at the instance level
obj.private_methods
obj.public_methods
obj.protected_methods
obj.singleton_methods

# Examining objects at the class level
MyClass.private_instance_methods
MyClass.protected_instance_methods
MyClass.public_instance_methods