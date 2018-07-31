def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total > 21
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  sum = display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input_value = get_user_input
  until input_value = 'h' || input_value == 's'
    invalid_command
    prompt_user
  end

  if input_value == 'h'
    return card_total += deal_card
  elsif input_value == 's'
    return card_total
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here

end
