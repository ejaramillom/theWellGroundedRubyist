class A
  def a_method
    puts "Definition in class A"
  end
end

class B < A
  def a_method
    puts "Definition in class B (subclass of A)"
  end
end

class C < B
end

c = C.new
c.a_method
# => Definition in class B (subclass of A)

# how to unbind a method from the subclass and get it from the superclass
A.instance_method(:a_method).bind(c).call
# => Definition in class A

# or also 

class C
  def call_original
    A.instance_method(:a_method).bind(self).call
  end
end

# but this is terrible application design

# Alternative techniques for calling callable objects
# So far we’ve exclusively used the call method to call callable objects. You do, however, have a couple of other options. One is the square-brackets method/operator, which is a synonym for call. You place any arguments inside the brackets:

mult = lambda {|x,y| x * y }
twelve = mult[3,4]

# If there are no arguments, leave the brackets empty. You can also call callable objects using the () method:

twelve = mult.(3,4)

# Note the dot before the opening parenthesis. The () method has to be called using a dot; you can’t just append the parentheses to a Proc or Method object the way you would with a method name. If there are no arguments, leave the parentheses empty.
