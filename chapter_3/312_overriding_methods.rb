class Check
  def _method
    puts "First definition of _method"
  end

  def _method
    puts "overrode _method result"
  end
end

thing = Check.new
thing._method