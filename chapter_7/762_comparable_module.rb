class Bid
  include Comparable # we include Comparable module to be able to define the spaceship method
  attr_accessor :estimate
  
  def <=>(other_bid) # we define the three conditions, greater, less and equal
    if self.estimate < other_bid.estimate
      -1
    elsif self.estimate > other_bid.estimate
      1
    else
      0
    end
  end
end

# this allows the class instances to compare themselves and obtain a result
# so for example 

bid1 = Bid.new
=> #<Bid:0x000001011d5d60>

bid2 = Bid.new
=> #<Bid:0x000001011d4320>

bid1.estimate = 100
=> 100

bid2.estimate = 105
=> 105

bid1 < bid2
=> true