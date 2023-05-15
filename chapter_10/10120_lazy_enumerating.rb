(1..Float::INFINITY).lazy.select {|n| n % 3 == 0 }.first(10) # this code does not run forever because of the lazy in infinity
# => [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]