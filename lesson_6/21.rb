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
    if str == 'J' || str == 'Q' || str == 'K'
      sum = sum + 10
    elsif str == 'A'
      sum = sum + 11
    else
      sum = sum + str.to_i
    end
  end

  number_of_aces = values.select { |aces| aces == 'A'} # if total is greater than 21, then redo iteration to reduce sum by 10
  number_of_aces.count.times do 
    sum = sum - 10 if sum > 21
  end
  sum
end

def display_final_score(player_hand, computer_hand)
  display_hands(player_hand, computer_hand)

  player_score = calculating_total(player_hand)
  computer_score = calculating_total(computer_hand)
  
  prompt("You had: #{player_score} while the computer had: #{computer_score}")
  if player_score > computer_score && player_score <= 21
    prompt("You won!")
  elsif computer_score > player_score && computer_score <= 21
    prompt("Computer won!")
  elsif player_score == computer_score
    prompt("It's a push!")
  elsif computer_score > 21
    prompt("You won!")
  else
    prompt("Computer won!")
  end
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

def display_hands(player_hand, computer_hand)
  system "clear"
  player_total = calculating_total(player_hand)
  prompt("Player's hand: #{player_total}")
  prompt(player_hand)
  puts ""   # creating a space
  
  computer_total = calculating_total(computer_hand)
  prompt("Computer's hand: #{computer_total}")
  prompt(computer_hand)
  puts ""   # creating a space
end

#gameplay
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

loop do 
  display_hands(player_hand_dealt, computer_hand_dealt)
  
  prompt("Your turn: Hit (h) or Stay (s)?")
  player_selection = gets.chomp
  
  if player_selection.downcase.start_with?('h')
    player_hand_dealt << new_deck.pop
    if calculating_total(player_hand_dealt) > 21    # quit the game due to BUSTING. Computer wins!
      break
    end
  else
    break
  end
end

display_hands(player_hand_dealt, computer_hand_dealt)

loop do
  if calculating_total(computer_hand_dealt) < 17
    computer_hand_dealt << new_deck.pop
    if calculating_total(computer_hand_dealt) > 21   # player wins!
      break
    end
  else
    break
  end
end

display_final_score(player_hand_dealt, computer_hand_dealt)
