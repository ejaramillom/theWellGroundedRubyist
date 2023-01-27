class BasicObject
  # seven methods are defined here
end 

module Kernel
  # over 100 method definitios are here in ruby
end 

class Object < BasicObject
  # one or two private methods go here
  # but the main point is to mix in the kernel module
  include Kernel
end 

