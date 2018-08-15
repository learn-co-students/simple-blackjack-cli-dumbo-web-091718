

def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card

 return  rand(1..11)# code #deal_card here


end

def display_card_total(card_total)

  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
   card1 = deal_card
   card2 = deal_card
  display_card_total(card1 + card2)
  card1+card2

end

def hit?(current_total)
  prompt_user
  input = get_user_input
  new_card = 0
  if input == 'h'
    new_card = deal_card
  elsif input != 's'
    invalid_command
  end
new_card + current_total

  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  prompts_user# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
total = initial_round
total = hit?(total)
display_card_total(total)
until total > 21
end
end_game(total)

    # code runner here
end
