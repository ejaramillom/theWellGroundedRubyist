def give_me_an_array(array)

# then add elements to the array

array << "new element"

# to avoid changing the array with the method, we can pass an enumerator instead to avoid modifying the array

give_me_an_array(array.to_enum)

# this disables destructive operations

class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  class Deck
    def cards
      @cards.to_enum
    end
    
    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

# this gives protection to avoid modifying the @cards deck

deck = PlayingCard::Deck.new
deck.cards << "Joker!!"
# => NoMethodError (undefined method '<<' for #<Enumerator:0x000001020643b8>)

# similarly, you can protect the array as:

return @cards.dup