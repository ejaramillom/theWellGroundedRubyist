module M 
  def report
    puts 'report method in module M'
  end 
end 

class C 
  include M 
  def report
    puts 'report method in class C'
    puts 'about to trigger next higher up report method'
    super
    puts 'back from the super call'
  end 
end 

c = C.new
c.report