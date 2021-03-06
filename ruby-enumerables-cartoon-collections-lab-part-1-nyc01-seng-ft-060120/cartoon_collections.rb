def greet_characters(array)
  # Use `each` to enumerate over the provided array
  #
  # Print a custom greeting for each element
  array.each do |element| 
    puts "Hello #{element}!"
  end
end

def list_dwarves(array)
  array.each_with_index do |item, index| 
     puts "#{index + 1}. #{item}"
   end
end 


# Use `each_with_index` to enumerate over the provided array
  #
  # Print a numbered list of each element