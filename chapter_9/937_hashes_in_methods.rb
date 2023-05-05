# you can pass a hash to a method like the last argument like this

add_to_city_database("New York City",
state: "New York",
population: 7000000,
nickname: "Big Apple")

# instead of doing:

def add_to_city_database(name, info)
c = City.new
c.name = name
c.state = info[:state]
c.population = info[:population]
# etc.

def m(a: 1, b: 2)
  p a,b
end

# => :m

m
# => 1
# => 2
# => [1, 2]

m(a:10)
# => 10
# => 2
# => [10, 2]

def m(a: 1, b: 2, **c)
 p a,b,c
end
# => :m

m(x: 1, y: 2)
# => 1
# => 2
# => {:x=>1, :y=>2}
# => [1, 2, {:x=>1, :y=>2}]