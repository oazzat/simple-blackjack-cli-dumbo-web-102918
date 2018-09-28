def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1+rand(11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  inp = gets.chomp
end

def end_game (num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  first = deal_card()
  second = deal_card()
  display_card_total(first+second)
end

def hit? (total)
  prompt_user
  again = get_user_input
  if again? == "h"
    total = total + deal_card
  elsif again? == "s"
    return
  else
    invalid_command
  end
  return total
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
