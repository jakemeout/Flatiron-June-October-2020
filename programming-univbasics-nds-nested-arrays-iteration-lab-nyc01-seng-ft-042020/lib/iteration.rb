def join_ingredients(src) 
      pizza_topings_phrase = []
      row_index = 0
  while row_index < src.count do
      element_index = 0
    while element_index < src[row_index].count do
      pizza_topings_phrase << "I love #{src[row_index][element_index]} and #{src[row_index][element_index += 1]} on my pizza"
      element_index += 1
    end
      row_index += 1
  end
    pizza_topings_phrase
end

#------------------------------------------------------------------------------------

def find_greater_pair(src)
        row_index = 0 
        results = []
  while row_index < src.count do 
        column_index = 0
        current_max = nil
    while column_index < src[row_index].count do 
       if current_max == nil
          current_max = src[row_index][column_index]
       elsif current_max < src[row_index][column_index] 
             current_max = src[row_index][column_index] 
       end
      column_index += 1
    end
    results << current_max
    row_index += 1 
  end 
  results
end

#------------------------------------------------------------------------------------  
  
def total_even_pairs(src)
        row_index = 0 
        total = 0
  while row_index < src.count do 
        column_index = 0
    while column_index < src[row_index].count do 
       if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0
       total += src[row_index][column_index]
       end
       column_index += 1
    end
    row_index += 1 
  end 
  total
end
  
   # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
