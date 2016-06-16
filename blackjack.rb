# - Create a Card class
# - Data: Suits & Numbers, and Number of Cards
# = Behavior: A card knows it's rank. A card can display itself as a string
module CardGame

class Cards
  attr_accessor :cards, :suits, :rank
  def initialize(number_of_cards = 52)
    @number_of_cards = number_of_cards
    @cards = cards
    @suits = suits
    @rank = rank
  end


# - Replaced by attr_accessor
  # - def cards
    # - @cards = cards
  # - end

  # - def suits
    # - @suits = suits
  # - end




  suits = [:hearts, :diamonds, :spades, :clubs]
suits.each do |suit|
  (2..14).each do |value|
    @cards << Card.new(suit, value)
  end
end
end

cards = gets.chomp

class Deck
  def initialize
    @cards = []
    [:hearts, :diamonds, :spades, :clubs].each do |suit|
      (2..14).each do |value|
        @cards.push(Card.new(suit, value))
      end
    end
  end

  def count
    @cards.count
  end

  def shuffle
    @cards.shift
  end

  def draw
    @cards.shift
  end
end
end

# - A hand can get cards
# - A hand can calculate its total
# - A hand knows if it's busted

class Hand
  # I want the hand to receive two cards and to play them both.
  # Data: cards
  # Behavior: receive and play
  def intialize(card_one, card_two)
    @hand = []
    @hand.push(card_one)
    @hand.push(card_two)
  end

  def receive(card)
    puts "I've received my cards!"
    (2).select do |cards|
  end

  def play
    puts "Player: #{receive}"
    puts "Computer: #{receive}"

  end
end

player = Hand.new
player.receive
computer = Hand.new
computer.receive
