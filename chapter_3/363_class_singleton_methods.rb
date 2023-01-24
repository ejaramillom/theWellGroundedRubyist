class Ticket
  attr :venue, :date
  attr :price, true

  def initialize(venue, date)
    @venue = venue
    @date = date 
    @price = 0
  end

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end
end 

first = Ticket.new('Town hall', '11.12.13')
second = Ticket.new('Library', '13.14.15')
third = Ticket.new('Fairgrounds', '10.10.23')

first.price = 20
second.price = 25
third.price = 17

highest = Ticket.most_expensive(first, second, third)
puts "The highest priced ticket is the one for #{highest.venue}"
