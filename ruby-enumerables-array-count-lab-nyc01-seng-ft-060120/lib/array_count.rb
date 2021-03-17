def count_strings(array)
  # Return the total number of strings in the provided array using the count enumerable
  strings = []
  array.count do |element| 
    if element.class == String 
     strings << element
    end
  end 
   strings.size 
end

def count_empty_strings(array)
  # Return the total number of EMPTY strings in the provided array using the count enumerable
  strings = []
  array.count do |element| 
    if element.class == String && element.length == 0
     strings << element
    end
  end 
   strings.size 
end