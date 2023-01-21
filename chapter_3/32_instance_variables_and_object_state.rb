class Person
  def set_name(string) 
    puts 'Setting person name...'
    @name = string
  end   
  def get_name
    puts 'this is the name of the person'
    @name
  end
end 

joe = Person.new.set_name('isma')
puts joe