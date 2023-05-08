[1,3,5,4,2].max
# => 5

%w(Ruby C APL Perl Smalltalk).min
# => "APL"

# non default comparison

%w(Ruby C APL Perl Smalltalk).min {|a,b| a.size <=> b.size }
# => "C"

%w{ Ruby C APL Perl Smalltalk }.min_by {|lang| lang.size } # using blocks
# => "C"

# minimum and maximum 
%w{ Ruby C APL Perl Smalltalk }.minmax
# => ["APL", "Smalltalk"]
%w{ Ruby C APL Perl Smalltalk }.minmax_by {|lang| lang.size }
# => ["C", "Smalltalk"]

