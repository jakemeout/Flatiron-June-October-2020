# don't forget to add: require 'pry'

require 'pry'


def prompt_user
  puts "What would you like to do?"
  puts "1.) Eat a hamburger."
  puts "2.) Eat a ham."
end

def get_user_input
  num = gets.chomp
  num
end

def selection(num)
  option_1 = "YUM YUM MUNCH MUNCH MUNCH"
  option_2 = "HAM HAM HAM IN MY TUMMY"
  
  if num == 1
     p option_1
  elsif num == 2
     p option_2
  end
end

def runner
  prompt_user
  selection(get_user_input)
end
