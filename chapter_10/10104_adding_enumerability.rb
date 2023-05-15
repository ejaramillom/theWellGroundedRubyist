module Music
  class Scale
    NOTES = %w(c c# d d# e f f# g a a# b)
    
    def play
      NOTES.each {|note| yield note }
    end
  end
end

scale = Music::Scale.new
scale.map {|note| note.upcase }
# => NoMethodError (unknown method `map' for #<Music::Scale:0x3b0aec>)
# because it does not mix the enumerable module 

enum = scale.enum_for(:play) # this gives enumerable powers to the object in that class
p enum.map { |note| note.upcase }
# => ["C", "C#", "D", "D#", "E", "F", "F#", "G", "A", "A#", "B"]
p enum.select { |note| note.include?('f') }
# => ["f", "f#"]
