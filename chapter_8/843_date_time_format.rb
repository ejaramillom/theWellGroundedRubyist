# string format methods (strftime)

t = Time.now

t.strftime("%m-%d-%y")
# => "24-04-23"

Specifier Description

%Y        Year (four digits)
%y        Year (last two digits)
%b, %B    Short month, full month
%m        Month (number)
%d        Day of month (left-padded with zeros)
%e        Day of month (left-padded with blanks)
%a, %A    Short day name, full day name
%H, %I    Hour (24-hour clock), hour (12-hour clock)
%M        Minute
%S        Second
%c        Equivalent to "%a %b %d %H:%M:%S %Y"
%x        Equivalent to "%m/%d/%y"

t.strftime("Today is %x")
# => "Today is 12/15/18"
