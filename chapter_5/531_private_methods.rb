class Cake
  def initialize(batter)
    @batter = batter
    @baked = baked
  end 
end 

class Egg
end

class Flour
end 

class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    return Cake.new(@batter)
  end 

  def pour_flour
    @batter.push(Egg.new)
  end 

  def stir_batter
  end 

  private :pour_flour, :add_egg, :stir_batter
  # baker calls the method to itself, but no one else can
end 

# Private and singleton are different
# It’s important to note the difference between a private method and a singleton method. A singleton method is “private” in the loose, informal sense that it belongs to only one object, but it isn’t private in the technical sense. (You can make a singleton method private, but by default it isn’t.) A private, non-singleton instance method, on the other hand, may be shared by any number of objects but can only be called under the right circumstances. What determines whether you can call a private method isn’t the object you’re sending the message to, but which object is self at the time you send the message.
