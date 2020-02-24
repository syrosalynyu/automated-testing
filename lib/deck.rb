
# deck.rb

require_relative 'card'

class Deck

  def initialize(game) #string
    @cards = []

    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @cards << card
      end
    end
  end

  def draw
    # returns a card
    retrun @cards.sample
  end

  def shuffle
    # shuffles the deck
    return @cards.shuffle
  end

  def count
  
  end
end
