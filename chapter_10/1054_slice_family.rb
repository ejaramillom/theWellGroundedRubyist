parsed_report = ["Top Secret Report", "Eyes Only", "=====", "Title: The Meaning of Life"]

parsed_report.slice_before(/=/).to_a
# => [["Top Secret Report", "Eyes Only"],[ "=====", "Title: The Meaning of Life"]]

parsed_report = ["Top Secret Report", "Eyes Only", "=====", "Title: The Meaning of Life", "Author: [REDACTED]", "Date: 2018-01-01", "=====", "Abstract:\n"]

parsed_report.slice_after(/=/).to_a
# => [["Top Secret Report", "Eyes Only", "====="], ["Title: The Meaning of Life", "Author: [REDACTED]", "Date: 2018-01-01", "====="], ["Abstract:\n"]]

(1..10).slice_before { |num| num % 2 == 0 }.to_a
# => [[1], [2,3], [4,5], [6,7], [8,9], [10]]

# cards deck with cycle method

class PlayingCard
  SUITS = %w(clubs diamonds hearts spades)
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  
  class Deck
    attr_reader :cards
    
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

# For example, this command produces a double deck of cards containing two of each card for a total of 104:
deck = PlayingCard::Deck.new(2)
puts deck.cards.size
# => 104