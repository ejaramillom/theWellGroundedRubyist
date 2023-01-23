class Publication
  attr :publisher, true  
end 

class Magazine < Publication
  attr :editor, true
end

mag = Magazine.new
mag.publisher = "David black"
mag.editor = "joe smith"

puts "Mag is published by #{mag.publisher} and its editor is #{mag.editor}"

# ruby does not allow multiple inheritances