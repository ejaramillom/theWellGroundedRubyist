# yielding to a block and returning value are two different things

5.times { puts "Writing this 5 times"}

# times is an instance method of the Integer class. It yields control to the code block, but returns the value of the integer.

Writing this 5 times!
Writing this 5 times!
Writing this 5 times!
Writing this 5 times!
Writing this 5 times!
=> 5 # the value that returns .times

class Integer
  def my_times
    c = 0
    puts "c = 0"
    puts "until c == #{self}..."
    until c == self
      yield c
      c += 1
    end
    self
  end
end

ret = 5.my_times {|i| puts "I'm on iteration #{i}!" }
puts ret