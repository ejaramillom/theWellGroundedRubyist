(1..Float::INFINITY).lazy.select {|n| n % 3 == 0 }.first(10) # this code does not run forever because of the lazy in infinity
# => [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]

# fizzbuzz

def fb_calc(i)
  case 0
  when i % 15
    "FizzBuzz"
  when i % 3
    "Fizz"
  when i % 5
    "Buzz"
  else
    i.to_s
  end
end

def fb(n)
  (1..Float::INFINITY).lazy.map {|i| fb_calc(i) }.first(n)
end

p fb(15)
