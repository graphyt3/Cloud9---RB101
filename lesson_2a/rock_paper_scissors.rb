VALID_CHOICES = ['rock', 'paper', 'scissor', 'lizard', 'spock']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissor') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissor' && second == 'paper') ||
    (first == 'scissor' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    return "You won!"
  elsif win?(computer, player)
    prompt("The computer won!")
    return "The computer won!"
  else
    prompt("It's a tie!")
    return "It's a tie!"
  end
end

loop do
  player_win_count = 0
  computer_win_count = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()
  
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end
  
    computer_choice = VALID_CHOICES.sample
    
    prompt("You choose: #{choice}; Computer chose: #{computer_choice}")
  
    winner = display_results(choice, computer_choice)
    
    if winner == "You won!" && player_win_count < 2
      player_win_count += 1
      prompt("You have #{player_win_count} wins and the computer has #{computer_win_count} wins.")
    elsif winner == "The computer won!" && computer_win_count < 2
      computer_win_count += 1
      prompt("You have #{player_win_count} wins and the computer has #{computer_win_count} wins.")
    elsif winner == "You won!" && player_win_count == 2
      player_win_count += 1
      prompt("You are the grand winner!")
      prompt("You have #{player_win_count} wins and the computer has #{computer_win_count} wins.")
      break
    elsif winner == "The computer won!" && computer_win_count == 2
      computer_win_count += 1
      prompt("The computer is the grand winner!")
      prompt("You have #{player_win_count} wins and the computer has #{computer_win_count} wins.")
      break
    end  
  end
  
  prompt("Do you want to play again? (Y/N)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you, good bye!")
