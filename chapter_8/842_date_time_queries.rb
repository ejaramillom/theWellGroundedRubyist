# Time objects can be queried as to their year, month, day, hour, minute, and second, as can date/time objects. Date objects can be queried as to their year, month, and day

dt = DateTime.now

dt.year
# => 2023

dt.hour 
# => 10

dt.minute
# => 53

t = Time.now

t.month
# => 4

# time objects have only 'sec' method

t.saturday?
# => false 

# also leap? and dst?

