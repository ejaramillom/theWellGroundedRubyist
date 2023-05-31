require 'socket'
server_test = TCPServer.new(3939)
connection = server_test.accept
connection.puts 'Hi. Here is the date.'
connection.puts `date`
connection.close
server_test.close

# keep an open socket connection

require 'socket'
server_test = TCPServer.new(3939)
while true
  connection = server_test.accept
  connection.puts "Hi. Here's the date."
  connection.puts `date`
  connection.close
end

# sending information to the server

require 'socket'
server_test = TCPServer.new(3939)
while true
  connection = server_test.accept
  connection.print "Hi. What's your name? "
  name = connection.gets.chomp
  connection.puts "Hi, #{name}. Here's the date."
  connection.puts `date`
  connection.close
end

# if a second client accesses this server, it will see nothing because the first client is still typing
# we solve this with threading

require 'socket'
server_test = TCPServer.new(3939)
while (connection = server_test.accept)
  Thread.new(connection) do |client|
    client.print "Hi. What's your name? "
    client_name = client.gets.chomp
    client.puts "Hi, #{client_name}. Here's the date."
    client.puts `date`
    client.close
  end
end