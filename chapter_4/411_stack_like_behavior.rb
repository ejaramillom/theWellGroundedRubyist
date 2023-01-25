module Stacklike
  def stack
    @stack ||= []
  end 

  def add_to_stack(obj)
    stack.push(obj)
  end

  def take_from_stack
    stack.pop
  end 
end 

# “Or-equals” and the other shortcut operators The expression array ||= [] is a shorthand way of saying: if array has a boolean value of true (if it’s neither false nor nil), then don’t do anything; but if it doesn’t, initialize it to a new array. If you were writing it out, instead of using the shortcut, you would write: array || array = [] (“array, or array get new array”). In addition to “or-equals,” there’s also a (rarely used) “and-equals” operator (&&=). Ruby has another family of shortcut operators, similar in appearance to ||= but engineered a little differently. These operators expand to calls to an underlying method.  A common one is the += operator; the expression a += 1 is equivalent to a = a + 1.  Other members of this shortcut family include -=, *=, /=, **= (raise to a power), &= (bitwise AND), |= (bitwise OR), ^= (bitwise EXCLUSIVE OR), and %= (modulo). Thus a -= 1 means a = a - 1, a *= 10 means a = a * 10, and so forth.  Each of these method-wrapping operators works with any object that has the relevant  underlying method, including instances of your own classes. If you define a + method, for example, you can use the x += y syntax on an instance of your class (x), and the  expression will be automatically expanded to x = x + y. And that, in turn, is just syntactic sugar for x = x.+(y), a call to the + method.  You’ll meet these shortcut techniques “officially” in chapter 7. Meanwhile, by all  means try them out in irb.

# Syntax of require/load vs. syntax of include
# You may have noticed that when you use require or load, you put the name of the item you’re requiring or loading in quotation marks; but with include, you don’t. That's because require and load take strings as their arguments, whereas include takes the name of a module, in the form of a constant. More fundamentally, it’s because require and load are locating and loading disk files, whereas include is performing a program-space, in-memory operation that has nothing to do with files. It’s a common sequence to require a feature and then include a module that the feature defines. The two operations thus often go together, but they’re completely different from each other.

# require "stacklike"

class Stack
  include Stacklike
end

s = Stack.new

s.add_to_stack('item one')
s.add_to_stack('item two')
s.add_to_stack('item three')

puts 'Objects currently on the stack: '
puts s.stack

taken = s.take_from_stack
puts 'removed this object: '
puts taken

puts 'Now on stack: '
puts s.stack
