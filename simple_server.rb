require 'socket'
require './note_list'

server = TCPServer.new(2345)
socket = server.accept
notes = NoteList.new

while true do 
  socket.puts "Enter note or type exit to quit"
  note = socket.gets.chomp
  if note == "exit"
    break
  else 
    notes.add(note)
    p notes
    notes.view_notes
  end
end

socket.close