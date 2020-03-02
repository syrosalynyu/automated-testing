
# card.rb
VALID_SUIT = [:hearts, :spades, :clubs, :diamonds]


class Card
  attr_reader :value, :suit

  def initialize(value, suit) # num, symbol
    # suits = [:hearts, :spades, :clubs, :diamonds]
    # Becca suggests to move to the top and make it as a constant variable
    raise ArgumentError.new("Please provide a number between 0 and 13") if value <= 0 || value > 13
    raise ArgumentError.new("This is not a vaild suit") if !VALID_SUIT.any? suit
    @value = value
    @suit = suit
  end

  def to_s
    return_value = num_to_headcard(value)
    return "#{return_value} of #{suit.to_s}"
  end

  def num_to_headcard(value)
    case value
    when 1
      return "Ace"
    when 11
      return "Jack"
    when 12
      return "Queen"
    when 13
      return "King"
    else
      return value
    end
  end

end

