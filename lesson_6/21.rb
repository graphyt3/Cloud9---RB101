# CONSTANTS
# ==============================
FACES = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze
SUITS = %w[Hearts Diamonds Clubs Spades].freeze
HIGH = 21
DEALER_BREAK = 17
MAX_WINS = 3

# METHODS
# ==============================
def prompt(msg)
  puts "==> #{msg}"
end

def single_spacer
  puts ''
end

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize
def welcome_message
  system 'clear'
  prompt('Welcome to Twenty-One!')
  prompt('=========================================')
  prompt('Instructions to play:')
  prompt('You will be playing against the computer.')
  prompt('The goal is to get as close to 21 without going over.')
  prompt('Numbered cards are their own value. (I.E 2 = 2).')
  prompt('(J)acks, (Q)ueens, (K)ings are worth 10 each.')
  prompt('(A)ces are worth 1 or 11.')
  prompt("The first to win #{MAX_WINS} rounds is the winner!")
  prompt('=========================================')
  prompt('Press Enter to Start!')
  gets
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
  values = hand_dealt.map { |card| card[1] } # extract all values from each array & store into new array of ONLY values
  sum = 0

  values.each do |str|
    if 'JQK'.include?(str) # if str == 'J' || str == 'Q' || str == 'K'
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

def display_hands(player_hand, computer_hand, computer_turn, game_scoreboard)
  system 'clear'

  if computer_turn == 'yes' # to show computer hand
    prompt("Computer has: #{cards_in_hand(computer_hand)} for a total of #{game_scoreboard[:computer_score]}")
  else
    prompt("Computer has: #{computer_hand[0][2]} and unknown card") # hides computer hand
  end
  single_spacer # creating a space
  prompt("You have: #{cards_in_hand(player_hand)} for a total of #{game_scoreboard[:player_score]}")
  single_spacer # creating a space
end

# determining winner
def display_final_score(player_hand, computer_hand, computer_turn, game_scoreboard, total_wins)
  display_hands(player_hand, computer_hand, computer_turn, game_scoreboard)

  puts '============================================'
  if game_scoreboard[:player_score] > game_scoreboard[:computer_score] && !busted?(game_scoreboard[:player_score])
    total_wins[:player_total_wins] += 1
    prompt('You won!')
  elsif game_scoreboard[:computer_score] > game_scoreboard[:player_score] && !busted?(game_scoreboard[:computer_score])
    total_wins[:computer_total_wins] += 1
    prompt('Computer won!')
  elsif game_scoreboard[:player_score] == game_scoreboard[:computer_score]
    prompt("It's a push!")
  elsif busted?(game_scoreboard[:computer_score]) # computer busted?
    total_wins[:player_total_wins] += 1
    prompt('You won!')
  else
    total_wins[:computer_total_wins] += 1
    prompt('Computer won!') # player busted?
  end
  prompt("Grand Total Wins:: Player: #{total_wins[:player_total_wins]}| Computer: #{total_wins[:computer_total_wins]}")
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def busted?(hand)
  hand > HIGH
end

def play_again?
  prompt('Would you like to play again? (y/n)')
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

# to show only the cards in terms of faces/suits
def cards_in_hand(cards)
  cards_string_array = cards.map do |card|
    card[2]
  end
  cards_string_array.join(', ')
end

# gameplay starts here
# ===============================
loop do
  welcome_message
  grand_total_wins = { player_total_wins: 0, computer_total_wins: 0 }
  loop do
    new_deck = initialize_deck
    # setting initial game
    game_score = { player_score: 0, computer_score: 0 }
    player_hand_dealt = []
    computer_hand_dealt = []
    computer_win_status = 'no'
    computer_turn = 'no'

    # initial deal of cards
    count = 0
    while count < 2
      player_hand_dealt << new_deck.pop
      computer_hand_dealt << new_deck.pop
      count += 1
    end

    game_score[:player_score] = calculating_total(player_hand_dealt)
    game_score[:computer_score] = calculating_total(computer_hand_dealt)

    loop do
      break if game_score[:player_score] == HIGH # check to see if player was dealt 21!

      player_selection = nil
      display_hands(player_hand_dealt, computer_hand_dealt, computer_turn, game_score)
      puts '============================================'
      loop do
        prompt('Your turn: (H)it or (S)tay?')
        player_selection = gets.chomp.downcase
        break if player_selection.start_with?('h') || player_selection.start_with?('s')

        prompt("Please enter 'h' or 's'")
      end

      break unless player_selection.start_with?('h')

      player_hand_dealt << new_deck.pop
      game_score[:player_score] = calculating_total(player_hand_dealt)
      if busted?(game_score[:player_score]) # quit the game due to BUSTING. Computer wins!
        computer_win_status = 'yes'
        break
      end
    end

    computer_turn = 'yes' # to reveal computer's hand

    loop do
      break if computer_win_status == 'yes'

      break if game_score[:computer_score] >= DEALER_BREAK # if computer needs to stop

      computer_hand_dealt << new_deck.pop
      game_score[:computer_score] = calculating_total(computer_hand_dealt)
      break if busted?(game_score[:computer_score]) # player wins!
    end

    display_final_score(player_hand_dealt, computer_hand_dealt, computer_turn, game_score, grand_total_wins)
    single_spacer
    break if grand_total_wins[:player_total_wins] == MAX_WINS || grand_total_wins[:computer_total_wins] == MAX_WINS

    prompt('Press Enter to continue')
    gets
  end
  prompt('Game over!')
  break unless play_again?
end
system 'clear'
prompt('Thank you for playing!')
