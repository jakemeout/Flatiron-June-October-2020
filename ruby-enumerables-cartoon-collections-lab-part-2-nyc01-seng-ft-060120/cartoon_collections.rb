# Use an Enumerable to square every element in the passed in array
# Return a new array of the results

def square_array(array)
    array.map do |element|
    element * element 
  end
end

# ----------------------------------------------------------------------------------------------------


 # Use an Enumerable to capitalize and add '!' to every element in the passed in array
 # Return a new array of the results
 
def summon_captain_planet(planeteer_calls)
    planeteer_calls.map do |element| 
    "#{element.capitalize}!"
  end
end


# ----------------------------------------------------------------------------------------------------


 # Use an Enumerable to check if any string in the passed in array is greater than 4 characters long
 # Return the boolean result of this check
 
def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? do |element|
      element.length > 4
  end
end
 

 
 # ----------------------------------------------------------------------------------------------------
 
  # Use an Enumerable to check if any elements in the passed in array match the valid calls listed above 
  # Return the first valid call found, or return nil if no valid calls are found

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  planeteer_calls.find do |element| 
     if valid_calls.find_index(element) != nil 
        element
    end
  end
end
  
 