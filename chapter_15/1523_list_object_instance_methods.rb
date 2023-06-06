String.methods.grep(/methods/).sort
# => [:instance_methods, :methods, :private_instance_methods, :private_methods,:protected_instance_methods, :protected_methods, :public_instance_methods, :public_methods, :singleton_methods]

# this means we can query for instance methods for our objects
# if you pass the attribute false, it will only show the methods defined in that particular class

# which methods are overriden in the subclass, or what methods of the module are overriden in the class

Range.instance_methods(false) & Enumerable.instance_methods(false)
# => [:first, :min, :max, :member?, :include?]