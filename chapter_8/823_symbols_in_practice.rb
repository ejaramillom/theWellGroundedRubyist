# symbols are used as method arguments and hash keys

# as method arguments
attr_accesor :name
attr_reader :age

'abc'.send(:upcase)
# => 'ABC'

# as hash keys
joe_hash = { :name => 'Joe', :age => '36'}

# symbols are time efficient for ruby, they improve search performance

sym = :david
# => :david

sym.upcase
# => :DAVID

sym.succ
# => :davie

sym[2]
# => "v"

sym.casecmp(:david)
# => 0

# think of symbols as integer like entities dressed as strings