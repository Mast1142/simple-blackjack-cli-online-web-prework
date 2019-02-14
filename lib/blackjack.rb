require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
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
   gets.chomp
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
 card_total = deal_card + deal_card
 display_card_total(card_total)
 card_total
end

def hit?(total)
  prompt_user
  move = get_user_input
    if move == "h"
      total = deal_card + total.to_i
      total
    elsif move == "s"
      total
    else
      invalid_command
    end
end

def invalid_command
  prompt_user
  hit?(total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
<<<<<<< HEAD
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
=======
  initial_round
  total = initial_round
  until total > 21
    hit?(total)
    display_card_total(total)
    return total
  end
  end_game
>>>>>>> 9ebb4b3c6691665091484ccf856b00e7d6516514
end