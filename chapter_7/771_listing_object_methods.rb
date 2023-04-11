"i am a string object".methods

# this should show the methods available for string objects
# it shows what the object responds to (class or module) not the instance
# it also includes singleton methods

"i am a string".methods.sort

# lets define a singleton method

str = "A plain old string"
=> "A plain old string"

def str.shout
 self.upcase + "!!!"
end
=> :shout

str.shout
=> "A PLAIN OLD STRING!!!"

str.methods.sort # this will show :shout method as well in the list

# next, if you create a module and include it in an object, even after the object was instantiated, it can make use of the new methods

str = "Another plain old string."
=> "Another plain old string."

module StringExtras
  def shout
    self.upcase + "!!!"
  end
end
=> :shout

class String
  include StringExtras
end
=> String

str.methods.include?(:shout)
=> true

