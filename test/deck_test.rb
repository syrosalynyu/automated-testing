require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "Create a deck of cards" do

    it "52 valid cards are in the deck" do
      deck = Deck.new("Blackjack")
      expect(deck.cards.length).must_equal 52
    end
    # raise ArgError if the Deck.cards.length < 52
    # it can be created
    # it has cards


    it "draw method" do 
      # Arrange
      deck = Deck.new("Blackjack")
      # Act
      card = deck.draw
      # Assert
      expect(card).must_be_instance_of Card
    end
    # the card you draw shouldn't be in the deck
    # Edge case:
    # draw a empty deck
    # a card you draw should be an instance of the card class.

    it "suffle method" do 
      # deck = Deck.new("Blackjack")
      # deck.shuffle
      deck = Deck.new("Blackjack")
      first_card = deck.cards[0]
      3.times do |index|
        new_shuffle = deck.shuffle
        expect(new_shuffle[0] != first_card).must_equal true
      end

    end
    # Edge cases:
    # it can shuffle the deck with 1 card
    # it can shuffle the deck with 0 card

    it "count method" do 
      # Arrange
      deck = Deck.new("Blackjack")
      # Act
      deck.draw
      card = deck.count
      # Assert
      expect(card).must_equal 51
    end
     # count will equal to 0 if it is a empty deck
     # count in the begining, it should equal to 52
  end
end


# "draw method practice in class"
describe Deck do
  let (:deck) {
    
  }


end
