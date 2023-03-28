names = ['Thing', 'Table', 'Omar']
names.map { |name| name.upcase }

=> ['THING', 'TABLE', 'OMAR']

# map returns a new object, each returns the same object (self)

class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield self[c]
      c += 1
    end
    acc # returns the acumulator instead of self
  end
end