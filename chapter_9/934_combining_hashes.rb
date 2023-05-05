# destructive

thing = { first: 'joe', second: 'leo', third: 'seiya'}
more = { first: 'aioria'}

thing.update(more)
puts thing[:first]
# => 'aioria'

# non destructive

another = thing.merge(more)
puts thing[:first] # here :first key was not updated
# => 'joe'
puts another[:first]
# => 'aioria'

# merge! is a synonym of update
