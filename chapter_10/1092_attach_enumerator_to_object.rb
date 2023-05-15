names = %w(David Black Yukihiro Matsumoto)
e = names.enum_for(:select) # creates enumerator starting with the argument method

e.each {|n| n.include?('a') } # the each method gets a yielder according to select's behavior
# => ['David', 'Black', 'Matsumoto']

# additional arguments 
e = names.enum_for(:inject, "Names: ")
# => #<Enumerator: ["David", "Black", "Yukihiro", "Matsumoto"]:inject("Names:")>
e.each {|string, name| string << "#{name}..." }
# => "Names: David...Black...Yukihiro...Matsumoto..."

# You can call Enumerator.new(obj, method_name, arg1, arg2...) as an equivalent to obj.enum_for(method_name, arg1, arg2...) . But using this form of Enumerator.new is discouraged.

