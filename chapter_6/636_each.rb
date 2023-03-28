array = [1, 4, 5, 8, 3]
array.each {|thing| puts "the each just got handed this number: #{thing}"}

# we can implement the same functionality for ourselves

class Array
  def my_each
    c = 0
    until c == size
      yield self[c]
      c += 1
    end
    self
  end
end