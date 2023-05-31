require 'socket' # => mandatory loading of socket library
  def welcome(chatter) # => takes a socket object prints a welcome line and returns a line of client input
    chatter.print "Welcome! Please enter your name: "
    chatter.readline.chomp
  end
  def broadcast(message, chatters) # => goes through array of 'chatters' and sends a 'message' to each one
    chatters.each do |chatter|
    chatter.puts message
  end
end

s = TCPServer.new(3939) # instantiates the TCPServer and initializes the array of chatters
chatters = []

while (chatter = s.accept)
  Thread.new(chatter) do |c|
    name = welcome(chatter) # => when a chatter connects the server welcomes it
    broadcast("#{name} has joined", chatters)
    chatters << chatter
    begin # => the chat begins in an infinite loop inside a begin rescue clause
      loop do
        line = c.readline # => messages are accepted with read line that raises an exception in end-of-file error
        broadcast("#{name}: #{line}", chatters)
      end
    rescue EOFError     # => if the chatter leaves the chat, the current attempt to read a line from that chatter raises EOFError, then control goes   
      c.close             # to rescue line, and then the chatter is erased from  chatters list, and a message is broadcasted saying someone left
      chatters.delete(c)  # if there is no EOFError, the message is broadcasted
      broadcast("#{name} has left", chatters)
    end
  end
end