require 'socket'
server = TCPSocket.new 'localhost', 5678

while line = server.gets
  puts line
end

server.close

# To connect to a TCP server you need a TCP client
# $ ruby tcp_client.rb
# The client connects to the same port and uses server.gets 
# to receive data from the server and output it in the ternminal

# Start the server running, in a separate terminal, start the client to receive the 
# server's message