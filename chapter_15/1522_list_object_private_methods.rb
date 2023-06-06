class Person
  attr_reader :name
  
  def name=(name)
    @name = name
    normalize_name
  end
  
  private
  
  def normalize_name
    name.gsub!(/[^-a-z'.\s]/i, "") # removes undesired characters from name
  end
end

david = Person.new
david.name = "123David!! Bl%a9ck"
raise "Problem" unless david.name == "David Black"
puts "Name has been normalized."
p david.private_methods.sort.grep(/normal/)
# => [:normalize_name]

# this is an example with statements in the console

ruby -e 'o = Object.new; p o.private_methods.size'
# => 74
