# adding

state_hash = Hash.new
state_hash['New_York'] = 'NY'
# => { 'New York' => 'NY'}

state_hash.store('New York', 'NY')
# => { 'New York', 'NY' }

# fetching

conn_abbrev = state_hash('Connecticut')
# => 'CN'

conn_abbrev = state_hash.fetch('Connecticut') # throws an exception if the key does not exist
# => 'CN'

state_hash.fetch('Nebraska', 'Unknown state') # the exception will return the meesage of the second argument
# => 'unknown state'

state_hash = { New_Jersey: 'NJ',
               Connecticut: "CT",
               Delaware: "DE" }

two_states = state_hash.values_at('New Jersey', 'Delaware')
# => ['NJ', 'DE']

state_hash.fetch_values('New Jersey', 'WYOMING') # fetch_value returns a key error
# => KeyError (key not found: 'WYOMING')

state_hash.fetch_values("New Jersey", "WYOMING") do |key| # if the key does not exist, it creates a new hash pair with the 
  key.capitalize                                          # default behavior down here
end
# => ["NJ", "Wyoming"]

# nested hashes
contacts = { john: {
                phone: "555-1234",
                email: "john@example.com" ,
             eric: {
                phone: "555-1235",
                email: "eric@example.com" }}}

# dig 
contacts.dig(:eric, :email)


