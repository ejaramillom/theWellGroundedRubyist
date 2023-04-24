# Date => to_datetime, to_time
# Time => to_date, to_datetime
# DateTime => to_time, to_date

# Arithmetics

t = Time.now
# => 2023-04-05 11:24:39 -0500

t - 20 # substracts seconds
# => 2023-04-05 11:24:19 -0500

dt = DateTime.now
# => #<DateTime: 2023-04-25T11:28:11-0500 ... >

puts dt + 100 # adds days
# => #<DateTime: 2023-07-05T11:28:11-0500 ... >

puts dt >> 3 # adds months
# => # => #<DateTime: 2023-08-25T11:28:11-0500 ... >

# we can use next_year, next_day and next_month, or prev_day_prev_year, prev_month

d = Date.today

d.next_year
# => 2023-04-25

# iterate over days

next_week = d + 7
d.upto(next_week) { |date| puts "#{date} is a #{date.strftime("%A")}"}

2023-04-15 is a Saturday
2023-04-16 is a Sunday
2023-04-17 is a Monday
2023-04-18 is a Tuesday
...