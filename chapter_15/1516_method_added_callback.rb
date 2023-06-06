class C
  def self.method_added(m)
    puts "Method #{m} was just defined."
  end
  def a_new_method
  end
end

# => Method a_new_method was just defined.

# singleton methods call themselves so this triggers both answers

class C
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
  def self.new_class_method
  end
end

# => Method singleton_method_added was just defined.
# => Method new_class_method was just defined.