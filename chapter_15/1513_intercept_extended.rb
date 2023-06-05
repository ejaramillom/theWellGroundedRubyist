# triggering callbacks from extend event

module M
  def self.extended(obj)
    puts "Module #{self} is being used by #{obj}."
  end
  
  def an_inst_method
    puts "This module supplies this instance method."
  end
end

my_object = Object.new
my_object.extend(M)
my_object.an_inst_method

# => Module M is being used by #<Object:0x007f8e2a95bae0>.
# => This module supplies this instance method.

# => extending an object with a module is the same as including that module in the object’s singleton class.