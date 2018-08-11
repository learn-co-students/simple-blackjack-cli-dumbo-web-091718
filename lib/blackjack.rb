$card = []

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(number = $card[0])
  puts  "Your cards add up to #{number}"
end

def prompt_user(number = $card[0])
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  question = gets.chomp
  return question
end

def end_game(number = $card[0])
    return puts  "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card()
  card2 = deal_card()
  card_total = card1 + card2
  display_card_total(card_total)
  $card << card_total
  return $card[0]
end

def hit?(number = $card[0])
  new_card = deal_card
  prompt_user
  hand = get_user_input

  if "h" === hand || "H" === hand
    $card[0] += new_card 
    if $card[0] > 21
      return end_game
    else
      display_card_total
      hit?
    end
  elsif "s" === hand || "S" === hand 
    return $card[0]
  else
    return invalid_command
  end

  return $card[0]
end

def invalid_command
  puts "Please enter a valid command"
  return hit?
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  total = $card[0]
  if total < 21
      hit?  
  else
    return end_game
  end
end

runner

