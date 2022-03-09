# CONSTANTS
FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
HIGH = 21
DEALER_BREAK = 17

# METHODS

def prompt(msg)
  puts "==>#{msg}"
end

def single_spacer
  puts ''
end

# initializing deck
def initialize_deck
  deck = []
  FACES.each do |faces|
    SUITS.each do |suits|
      temp_holder = []
      temp_holder << suits
      temp_holder << faces
      temp_holder << "#{faces} of #{suits}" # Name of card to be seen on screen
      deck << temp_holder
    end
  end
  deck.shuffle!
end

# score of cards in hand
def calculating_total(hand_dealt)
  values = hand_dealt.map { |card| card[1] } # extract all of the values out of each array and store into new array of ONLY the values
  sum = 0

  values.each do |str|
    if str == 'J' || str == 'Q' || str == 'K'
      sum += 10
    elsif str == 'A'
      sum += 11
    else
      sum += str.to_i
    end
  end

  number_of_aces = values.select { |aces| aces == 'A' } # if total is < than 21, then redo iteration to reduce sum by 10
  number_of_aces.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def display_hands(player_hand, computer_hand, computer_turn)
  system 'clear'
  player_score = calculating_total(player_hand)
  computer_score = calculating_total(computer_hand)
  if computer_turn == 'yes'
    prompt("Computer has: #{cards_in_hand(computer_hand)} for a total of #{computer_score}") # shows computer hand
    single_spacer # creating a space
  else
    prompt("Computer has: #{computer_hand[0][2]} and unknown card") # hides computer hand
    single_spacer
  end
  prompt("You have: #{cards_in_hand(player_hand)} for a total of #{player_score}")
  single_spacer # creating a space
end

# determining winner
def display_final_score(player_hand, computer_hand, computer_turn)
  display_hands(player_hand, computer_hand, computer_turn)

  player_score = calculating_total(player_hand)
  computer_score = calculating_total(computer_hand)
  puts '============================================'
  if player_score > computer_score && player_score <= HIGH
    prompt('You won!')
  elsif computer_score > player_score && computer_score <= HIGH
    prompt('Computer won!')
  elsif player_score == computer_score
    prompt("It's a push!")
  elsif computer_score > HIGH
    prompt('You won!')
  else
    prompt('Computer won!')
  end
end

# to show only the cards in terms of faces/suits
def cards_in_hand(cards)
  cards_string_array = cards.map do |card|
    card[2]
  end
  cards_string_array.join(', ')
end

# gameplay starts here
loop do
  new_deck = initialize_deck

  # deal cards
  player_hand_dealt = []
  computer_hand_dealt = []
  computer_win_status = 'no'
  computer_turn = 'no'

  # initial deal
  count = 0
  while count < 2
    player_hand_dealt << new_deck.pop
    computer_hand_dealt << new_deck.pop
    count += 1
  end

  loop do
    break if calculating_total(player_hand_dealt) == HIGH # check to see if player was dealt 21!

    player_selection = nil
    display_hands(player_hand_dealt, computer_hand_dealt, computer_turn)
    puts '============================================'
    loop do
      prompt('Your turn: (H)it or (S)tay?')
      player_selection = gets.chomp.downcase
      break if player_selection.start_with?('h') || player_selection.start_with?('s')

      prompt("Please enter 'h' or 's'")
    end

    if player_selection.start_with?('h')
      player_hand_dealt << new_deck.pop
      if calculating_total(player_hand_dealt) > HIGH # quit the game due to BUSTING. Computer wins!
        computer_win_status = 'yes'
        break
      end
    else
      break
    end
  end

  computer_turn = 'yes' # to reveal computer's hand

  loop do
    break if computer_win_status == 'yes'

    break if calculating_total(computer_hand_dealt) >= DEALER_BREAK

    computer_hand_dealt << new_deck.pop
    break if calculating_total(computer_hand_dealt) > HIGH # player wins!
  end

  display_final_score(player_hand_dealt, computer_hand_dealt, computer_turn)
  single_spacer
  prompt('Would you like to play again? (y/n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
system 'clear'
prompt('Thank you for playing!')
