class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
    @price = 0
  end

  def set_price(amount)
    @price = amount
  end

  attr_reader :price

  attr_reader :venue

  attr_reader :date
end

ticket = Ticket.new('Town hall', '11.12.13')
ticket.set_price(77.00)
puts "The ticket costs #{'%.2f' % ticket.price}"
ticket.set_price(92.50)
puts "Whoops-- it just went up. Now costs #{'%.2f' % ticket.price}"

# here we could have used sprintf("%.2f", ticket.price) to format the cost of the ticket

# fixing the code using the attr methods the ode looks like this

class Ticket
  attr_reader :venue, :date
  attr_accessor :price
  def initialize(venue, date)
    @venue = venue
    @date = date
  end
end

attr_reader Creates a reader
method attr_reader :venue 
def venue
  @venue
end

attr_writer Creates a writer method
attr_writer :price 
def price=(price)
  @price = price
end

attr_accessor Creates reader and writer methods 
attr_accessor :price 
def price=(price)
  @price = price
end
def price
  @price
end

Attr
Creates a reader and optionally a writer method (if the second argu-
ment is true)
attr :venue
attr :price, true
See attr_reader
See attr_accessor
