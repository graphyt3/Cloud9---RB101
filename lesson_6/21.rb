# CONSTANTS
CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
HEARTS = 'H'
DIAMONDS = 'D'
SPADES = 'S'
CLUBS = 'C'

# METHODS

def calculating_total(hand_dealt)
  # hand_dealt = nested array [['H', '6'], ['D', 'A']]
  values = hand_dealt.map {|card| card[1] } # extract all of the values out of each array and store into new array of ONLY the values
  # iterate through each value in VALUES and adjust to numbers and then add together
  # if total is greater than 21, then redo iteration to add to new lower sum
  
end

def initialize_deck
  new_deck = []
  (2..10).times do |num|
    new_deck << num
  end
  new_deck
end