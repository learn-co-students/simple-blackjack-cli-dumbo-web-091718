def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand = []
  hand << deal_card
  hand << deal_card
  sum_of_cards = hand[0] + hand[1]
  display_card_total(sum_of_cards)
  return sum_of_cards
end


def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == 's'
    return card_total
  elsif input == 'h'
    card_total += deal_card
  end
end

# def invalid_command
#   # code invalid_command here
# end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  get_user_input
  welcome
  initial_round
end
