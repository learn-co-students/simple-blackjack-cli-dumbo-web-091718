

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts  "Your cards add up to #{number}"
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  return  "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card()
  card2 = deal_card()
  number = card1 + card2
  display_card_total(number)
  number
end

def hit?(number)
  prompt_user
  hand = get_user_input
  if hand  == "h"
    number += deal_card
  elsif hand == "s"
    number
  else
    invalid_command
  end
  number
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  prompt_user
  until number >= 21 do 
    hit?(number)
    display_card_total(number)
  end
  end_game(number)
end


