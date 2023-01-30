# Summing up these rules in one example, here is what you should not do: 

# module Vehicle 
# ...
# class SelfPropelling
# ...
# class Truck < SelfPropelling
# include Vehicle
# ...

# Rather, you should do this:

# module SelfPropelling
# ...
# class Vehicle
# include SelfPropelling
# ...
# class Truck < Vehicle
# ...

# nesting modules and classes

# h = Tools::Hammer.new

# Nested module/class chains like Tools::Hammer are sometimes used to create separate namespaces for classes, modules, and methods. This technique can help if two classes have a similar name but aren’t the same class. For example, if you have a Tool::Hammer class, you can also have a Piano::Hammer class, and the two Hammer classes won’t conflict with each other because they are nested in their own namespace