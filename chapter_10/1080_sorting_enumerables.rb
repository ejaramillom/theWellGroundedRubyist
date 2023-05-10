# you should apply sorting methods in enumerable elements, for instance, put your objects in arrays or hashes and the order them
# so you don't have to mix Enumerable module in your class 

[3,2,5,4,1].sort
# => [1, 2, 3, 4, 5]

# if you have a collection of paintings, you have to define Painting#<=>

[pa1, pa2, pa3, pa4, pa5].sort # ruby does not make sense of this

class Painting
  attr_reader :price
  
  def initialize(price)
    @price = price
  end
  
  def to_s
    "My price is #{price}."
  end
  
  def <=>(other_painting)
    self.price <=> other_painting.price
  end
end

paintings = 5.times.map { Painting.new(rand(100..900)) }

puts "5 randomly generated Painting prices:"
puts paintings
puts "Same paintings, sorted:"
puts paintings.sort

# => 5 randomly generated Painting prices:
# => My price is 147.
# => My price is 798.
# => My price is 472.
# => My price is 471.
# => My price is 675.
  
# => Same Paintings, sorted:
# => My price is 147.
# => My price is 471.
# => My price is 472.
# => My price is 675.
# => My price is 798.