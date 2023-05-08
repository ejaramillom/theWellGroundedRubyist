colors = %w(red orange yellow green blue indigo violet)
# => ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]

colors.group_by {|color| color.size }
# => {3=>["red"], 6=>["orange", "yellow", "indigo", "violet"], 5=>["green"], 4=>["blue"]}
# returns a hash of key value pairs, the key is the amount of elements that match the block

class Person
  attr_accessor :age
  
  def initialize(options)
    self.age = options[:age]
  end
  
  def teenager?
    (13..19) === age
  end
end

people = 10.step(25,3).map {|i| Person.new(:age => i) } # generates an array of people, passes the values from 10 to 25 in steps of 3, and calculates if the person is a teenager

# thanks to map, all elements are accumulated in an array

teens = people.partition {|person| person.teenager? } # this separates the array in two, teens and non teens
# => [[teens], [non teens]]

puts "#{teens[0].size} teens; #{teens[1].size} non-teens"
# => 3 teens; 3 non-teens


