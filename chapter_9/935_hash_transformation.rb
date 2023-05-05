h = Hash[1,2,3,4,5,6]
# => {1=>2, 3=>4, 5=>6}
h.select {|k,v| k > 1 }
# => {3=>4, 5=>6}

# hash to hash operations

h.reject {|k,v| k > 1 }
# => {1=>2}

# we can also use keep_if and delete_if

{ street: "127th Street", apt: nil, borough: "Manhattan" }.compact
# => {:street=>"127th Street", :borough=>"Manhattan"}

h = { 1 => "one", 2 => "two", 3 => "two" }
h.invert
# => {"two"=>2, "one"=>1}

h.clear
# => {}

{ 1 => "one", 2 => "two" }.replace({ 10 => "ten", 20 => "twenty"})
# => {10 => "ten", 20 => "twenty"}
