[1,2,3,4,5,6,7,8,9,10].find {|n| n > 5 } # nil if no element in array does match
# => 6

[1,2,3,nil,4,5,6].find {|n| n.nil? } # this test makes no sense, it always returns nil
# => nil 

# how to suplly a failure handling method

failure = lambda { 11 } # this is a proc, or anonymous method
# #<Proc:0x434810@(irb):6 (lambda)>
over_ten = [1,2,3,4,5,6].find(failure) {|n| n > 10 }
# => 11

