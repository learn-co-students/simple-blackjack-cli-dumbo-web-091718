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
  gets.chomp
end

def game_won(dealer_total, card_total)
  puts "Congrats, you won! The dealer's cards added up to #{dealer_total}. Your cards added up to #{card_total}."
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def dealers_hand
  card1 = deal_card
  card2 = deal_card
  card1+card2
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  card1+card2
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  newCard = 0
  if input == 'h'
    newCard = deal_card
  elsif input != 's'
   invalid_command
  end
 newCard+current_total
end

def invalid_command
  puts "Please enter a valid command"
  prompts_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_total = initial_round
  dealer_total = dealers_hand
  new_total = 0
  until new_total > 21 || new_total > dealer_total
    new_total = hit?(initial_total)
    display_card_total(new_total)
  end
  if new_total > dealer_total && new_total <=21
     game_won(dealer_total, new_total)
  else
  end_game(new_total)
  end
end
