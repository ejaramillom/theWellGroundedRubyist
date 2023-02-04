module M 
  class C 
    class D
      module N 
        X = 1
      end 
    end 
  end 
end 

module O 
  class P 
    X = 2
    class Q
      module R 
        X = 3
      end 
    end 
  end 
end 

puts M::C::D::N::X
puts O::P::X

# if we create a class name that is the same as a built in method or class in ruby, like Violin::String, but we want to access String class from ruby, we have to write ::String.new() so this makes use of the native class, not the one in Violin