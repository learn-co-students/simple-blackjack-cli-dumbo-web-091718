require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return Random.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_hand = deal_card
  second_hand = deal_card
  sum = first_hand + second_hand
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  if input == "h"
    current_hand = deal_card
    return current_hand + card_total
  elsif input == "s"
    return card_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    current_hand = hit?(sum)
    sum = current_hand if current_hand.is_a?(Integer)
    display_card_total(sum)
  end
  end_game(sum)
end
