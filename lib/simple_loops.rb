# Write your methods here

def loop_message_five_times(message)
  i = 0 
  looped_message = ""
  while i < 5 do 
    looped_message += message + (i == 4 ? "" : "\n")
    i += 1 
  end
  print looped_message
end

def loop_message_n_times(message, number)
   i = 0 
  looped_message = ""
  while i < number do 
    looped_message += message + (i == number - 1 ? "" :  "\n")
    i += 1 
  end
  print looped_message
end


def output_array(array)
   i = 0 
  while i < array.length do 
    puts array[i]
    i += 1 
  end
end
  
  
def return_string_array(array)
   i = 0 
   looped_array = []
  while i < array.length do 
    looped_array << array[i].to_s
    i += 1 
  end
  looped_array
end