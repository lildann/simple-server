require 'socket'
server = TCPServer.new 5678

while session = server.accept
  session.puts "The time is #{Time.now}"
  session.close
end

# A TCP *server* binds to port 5678 and waits for a *client* to connect
# $ ruby tcp_server.rb
# When connected, the server will return the message #{Time.now} to the client 
# and then close the connection