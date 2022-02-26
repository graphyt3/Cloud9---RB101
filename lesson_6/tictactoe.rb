require 'pry'

# CONSTANTS
# ===========================================
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + #rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + #columns
                [[1, 5, 9], [3, 5, 7]]              #diagonals
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MAX_WINS = 1

# Method Definition
# ==================================
def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)    #determines which slots are EMPTY with ' '
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ' '
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join("#{delimiter}")
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    display_board(brd)
    prompt("Sorry, that's an invalid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd)
      break if square
  end
  
  if !square
    square = empty_squares(brd).sample
  end
  
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)         # forces if it detects either player/computer to true, and if nil will return false (aka nobody won)
end

def find_at_risk_square(line, board)
  if board.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 2
    binding.pry
    board.select{|key, value| line.include?(key) && value == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_offense(brd)

end
 
def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_score(score_hash)
  prompt("Score Board - You won: #{score_hash[:player_score]} games, Computer won: #{score_hash[:computer_score]} games.")
end

def update_scores(score_hash, brd)       # updating the scores of the game
  round_winner = detect_winner(brd)
  if round_winner == 'Player'
    score_hash[:player_score] += 1 
  elsif round_winner == 'Computer'
    score_hash[:computer_score] += 1
  end
end

def ultimate_winner(score_hash)     # to determine who is the ultimate winner
  score_hash[:player_score] == MAX_WINS || score_hash[:computer_score] == MAX_WINS
end

def display_ultimate_winner(score_hash)
  
  display_score(score_hash)
  winner = ''
  if score_hash[:player_score] == MAX_WINS
    winner = 'Player'
  elsif score_hash[:computer_score] == MAX_WINS
    winner = 'Computer'
  end
  prompt("#{winner} is the ultimate champion!")
end

# Game Play
# ============================================

loop do
  system 'clear'
  score = {player_score: 0, computer_score: 0}
  prompt("Welcome to Tic Tac Toe!")
  display_score(score)
  prompt("The first to win #{MAX_WINS} games wins!")
  prompt("Press Enter key to continue")
  gets
  
  loop do 
    board = initialize_board
    loop do
      display_board(board)
      
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
    
    update_scores(score, board)
    if ultimate_winner(score)      # breaking loop if ultimate winner == TRUE
      display_board(board)
      break
    end
    
    display_board(board)
    if someone_won?(board)
      prompt("#{detect_winner(board)} won!")
    else
      prompt("It's a tie!")
    end
    
    display_score(score)
    prompt("Press Enter key to continue:")
    gets
  end
  
  display_ultimate_winner(score)
  prompt("Would you like to play again? (Y/N):")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt('Thank you for playing!')
