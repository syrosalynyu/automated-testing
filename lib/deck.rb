
# deck.rb
require_relative 'card'

class Deck
  attr_reader :cards

  def initialize(game)
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        @cards << card
      end
    end
    @num_of_cards = cards.length
  end

  def draw
    @num_of_cards -= 1
    return @cards.sample
  end

  def shuffle
    return @cards.shuffle
  end

  def count
    return @num_of_cards
  end
end

# c = Deck.new("blackjack")
# p c.draw
# p c.draw
# p c.count
# p c