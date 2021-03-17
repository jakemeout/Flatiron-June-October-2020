def run_guessing_game
  rand_num = rand(6) + 1 
  prompt_user = "Guess a number bewtewwn 1 and 6!"
  user_input = gets.chomp
  if user_input == "exit"
     puts "Goodbye!"
  elsif user_input != rand_num.to_s
     puts "Sorry! The computer guessed #{rand_num}."
  else
    puts "You guessed the correct number!"  
   end
 end
 