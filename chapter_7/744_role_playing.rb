# to_str

class Person
  attr_accessor :name
  
  def to_str
    name
  end
end

# to_ary

class Person
  attr_accessor :name, :age, :email
  
  def to_ary
    [name, age, email]
  end
end