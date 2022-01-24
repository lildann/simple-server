require 'socket'

server = TCPServer.new(2345)

loop do
  socket = server.accept
  while line = socket.gets
    puts line
  end
end

=begin

Connect to http://localhost:2345
Server prints to the terminal what the web browser is sending to the server
The server isn't sending anything back, so the web browser sits blankly

=end