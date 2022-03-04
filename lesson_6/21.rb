# CONSTANTS
FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
SUITS = ['hearts', 'diamonds', 'clubs', 'spades']

# METHODS

def prompt(msg)
  puts "==>#{msg}"  
end

def calculating_total(hand_dealt)
  values = hand_dealt.map {|card| card[1] } # extract all of the values out of each array and store into new array of ONLY the values
  sum = 0
  values.each do |str|
    sum = sum + str.to_i
  end
  sum

  # iterate through each value in VALUES and adjust to numbers and then add together
  # if total is greater than 21, then redo iteration to add to new lower sum
  
end

def initialize_deck     #initializing deck
  deck = []
  FACES.each do |faces|
    SUITS.each do |suits|
      temp_holder = []
      temp_holder << suits
      temp_holder << faces
      deck << temp_holder
    end
  end
  deck
end

def shuffle_deck(deck)
  deck.shuffle!
end

new_deck = initialize_deck
shuffle_deck(new_deck)

#deal cards
player_hand_dealt = []
computer_hand_dealt = []
count = 0

while count < 2
  player_hand_dealt << new_deck.pop
  computer_hand_dealt << new_deck.pop
  count += 1
end

system "clear"
prompt("Player's hand:")
prompt(player_hand_dealt)
p player_total = calculating_total(player_hand_dealt)

prompt("Computer's hand:")
prompt(computer_hand_dealt)

prompt("Your turn: Hit (h) or Stay (s)?")
player_selection = gets.chomp