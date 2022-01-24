class NoteList
attr_reader :note_list

  def initialize
    @note_list = []
  end

  def add(note)
    @note_list << note
  end

  def view_notes
    puts "HERE ARE YOUR NOTES"
    @note_list.each_with_index do |note, index| 
      puts "#{index+1}. #{note}"
    end
  end
end