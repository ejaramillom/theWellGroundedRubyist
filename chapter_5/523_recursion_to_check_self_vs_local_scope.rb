class C 
  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Here is the inspect string for self:"
    p self
    puts "and here is a"
    puts a
    if recurse
      puts "recursing by callin myself..."
      x("second value for a")
      puts "back after recursion, here is a"
      puts a
    end 
  end 
end 

c = C.new
c.x("first value for a", true)