# instance methods are shared by all instances of a Class

class Ticket
  def event
    "Can't really be specified yet"
  end
end

ticket = Ticket.new
puts ticket.event

# singleton methods are methods defined for a particular object, see example 233

# ticket = Ticket.new
# def ticket.address 
#   'Street 22, ableton 455 south'
# end