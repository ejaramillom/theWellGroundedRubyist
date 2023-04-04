class Roster
  attr_accessor :players
end

class Player
  attr_accessor :name, :position
  def initialize(name, position)
    @name = name
    @position = position
  end
end

tourney_roster2 = Roster.new
if tourney_roster2.players.first.position == "Forward"
  puts "Forward: #{tourney_roster1.players.first.name}"
end

# instead of asking for this:
# if tourney_roster2.players &&
# tourney_roster2.players.first &&
# tourney_roster2.players.first.position == "Forward"

# we can use the safe operator (&.) so that we do not rescue an error if the result of the query is nil 

if tourney_roster2.players&.first&.position == "Forward"
  puts "Forward: #{tourney_roster1.players.first.name}"
end