class C
end

c = C.new

class << c
  def x
  end
  
  def y
  end
  
  def z
  end

  p private_instance_methods(false)
end

protected :y
private :z # does not return private methods

p c.singleton_methods.sort

# => [:x, :y]
# => [:z] these are the private instance methods
