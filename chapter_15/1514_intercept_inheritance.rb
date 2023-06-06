class C
  def self.inherited(subclass)
    puts "#{self} just got subclassed by #{subclass}."
  end
end

class D < C
end

# => C just got subclassed by D.

class E < D
end

# => D just got subclassed by E.