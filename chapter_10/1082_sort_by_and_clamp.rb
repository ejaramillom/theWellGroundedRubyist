# sort_by is an instance method of enumerable module

["2",1,5,"3",4,"6"].sort_by {|a| a.to_i } # or sort_by(&:to_i)
# => [1, "2", "3", 4, 5, "6"]

# You can sort objects by putting them inside an array and providing a code block  telling the array how it should rank any two of the objects.

# You can define <=> for a class and put instances of that class inside an array or other enumerable for sorting. We saw an example of this in listing 10.3.

# You can include the Comparable module in your class to get sortability inside an array and all the comparison operations between any two of your objects.

pa1 = Painting.new(100)
pa2 = Painting.new(200)
pa1 > pa2
# => NoMethodError (undefined method '>' for #<Painting:...)
# paintings don't have Comparable module included in theri definition

# we would have to write it like this

class Painting
  include Comparable
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

# now comparison is enabled

pa1 > pa2
# => false
pa1 < pa2
# => true
pa3 = Painting.new(300)
pa2.between?(pa1, pa3)
# => true

# clamp

cheapest, priciest = [pa1, pa2, pa3].minmax
Painting.new(1000).clamp(cheapest, priciest).object_id == priciest.object_id
# => true

# If the Painting’s price is less than the first argument ( cheapest ), clamp returns the first argument. 
# If it's greater than the second argument ( priciest ), it returns the second argument. 
# If the price falls between cheapest and priciest , it returns the price itself.
