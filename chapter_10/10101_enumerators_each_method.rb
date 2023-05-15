array = %w(cat dog rabbit)
# => ["cat", "dog", "rabbit"]
e = array.map
# => #<Enumerator: ["cat", "dog", "rabbit"]:map>
e.each {|animal| animal.capitalize }
# => ["Cat", "Dog", "Rabbit"]

# unoverriding phenomenon

h = { cat: "feline", dog: "canine", cow: "bovine" }
# => {:cat=>"feline", :dog=>"canine", :cow=>"bovine}
h.select {|key,value| key =~ /c/ }
# => {:cat=>"feline", :cow=>"bovine }

e = h.enum_for(:select)
# => #<Enumerator: {:cat=>"feline", :dog=>"canine", :cow=>"bovine"}:select>
e.each {|key,value| key =~ /c/ }
# => {:cat=>"feline", :cow=>"bovine }

# if we override 'each' method for the enumerable hash, it returns a hash instead of the enumerator yielder

e = h.to_enum
# => #<Enumerator: {:cat=>"feline", :dog=>"canine", :cow=>"bovine"}:each>

h.each { }
# => {:cat=>"feline", :dog=>"canine", :cow=>"bovine}
e.each { }
# => {:cat=>"feline", :dog=>"canine", :cow=>"bovine}
e.select {|key,value| key =~ /c/ }
# => [[:cat, "feline"], [:cow, "bovine"]]

# If e.each is pegged to h.each , how does the return value of e.select get unpegged from the return value of h.select ? The key is that the call to select in the last example is a call to the select method of the enumerator, not the hash.

# In this sense, the enumerator is adding enumerability to the hash, even though the hash is already enumerable. It’s also un-overriding Enumerable#select ; the select provided by the enumerator is Enumerable#select , even if the hash’s select wasn’t