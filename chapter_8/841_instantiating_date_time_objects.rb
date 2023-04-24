# create a date object

Date.today
# => #<Date: 2023-04-24 ((2458134j,0s,0n),+0s,2299161j)

Date.today.to_s
# => 2023-04-24

puts Date.new(1959, 2, 1) # if not provided it defaults to 1
# => 1959-02-01

puts Date.parse("2003/6/9") # => makes an interpretation of the string as a date
# => 2003-06-09

# offset for old dates starts in year 1970
puts Date.parse("77/6/9")
# => 1977-06-09

puts Date.parse("23 nov 1991")
# => 1991-11-23



# create a time object

Time.new
# => 2023-04-24 09:29:47 -0500

Time.at(100000000) # gives yout the time after the epoc (january 1st, 1970) in seconds
# => 1973-03-03 04:46:40 -0500

TIme.mktime(2007, 10, 3, 14, 3, 6)
# => 2007-10-03 14:03:06 -0500



# create a DateTime (these are subclasses of Date)

puts DateTime.now 
# => #<DateTime: 2018-12-15T19:03:41-05:00 ((2458135j,221s,235620441n),-18000s,2299161j)>