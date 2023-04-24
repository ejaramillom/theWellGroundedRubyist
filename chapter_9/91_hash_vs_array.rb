hash = { red: "ruby", white: "diamond", green: "emerald" }

hash.each_with_index { |(key, value), i| puts "Pair #{i} is: #{key}/#{value}" } # the parentheses splits the array

# => Pair 0 is: red/ruby
# => Pair 1 is: white/diamond
# => Pair 2 is: green/emerald

