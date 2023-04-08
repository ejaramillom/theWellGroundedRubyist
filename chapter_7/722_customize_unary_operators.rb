class Banner < String
  def +@
    upcase
  end
  def -@
    downcase
  end
  def !
    reverse
  end
end

banner = Banner.new("Eat at David's!")
puts +banner
puts -banner
puts  !banner
puts (not banner)