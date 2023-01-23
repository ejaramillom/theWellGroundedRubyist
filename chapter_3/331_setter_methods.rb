class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
    @price = 0
  end

  def set_price(amount)
    @price = amount
  end

  def price 
    @price
  end 
  
  def venue 
    @venue 
  end

  def date 
    @date
  end  
end 

ticket = Ticket.new('Town hall', '11.12.13')
ticket.set_price(77.00)
puts "The ticket costs #{"%.2f" % ticket.price}"
ticket.set_price(92.50)
puts "Whoops-- it just went up. Now costs #{"%.2f" % ticket.price}"

# here we could have used sprintf("%.2f", ticket.price) to format the cost of the ticket