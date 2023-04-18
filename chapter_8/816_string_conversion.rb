# string as base 17 number

'100'.to_i(17)
# => 289

'100'.oct
# => 64

'100'.hex
# => 256

"1.2345".to_f
# => 1.2345

"Hello".to_str
# => "Hello"

"-4e-2i".to_c
# =>(0-0.04i)

"4.55".to_r
# => (91/20)

"abcde".to_sym
# => :abcde

"1.2345and some words".to_f
# => 1.2345

"just some words".to_i
# => 0