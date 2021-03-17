# don't forget to add: require 'pry'

def snake_it_up(string)
  if string[0] == "s" || string[0] == "S"
     i = 0 
     ten_s = ""
    while i < 10 
     ten_s += string[0] 
     i += 1
    end
   new_string = ten_s + string
  end
  p new_string
end
