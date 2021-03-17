def find_min_in_nested_arrays(src)
    smallest_num_of_a = []
    row_index = 0
    while row_index < src.count do
        element_index = 0 
         min = 1000
      while element_index < src[row_index].count do
        if src[row_index][element_index] < min
          min = src[row_index][element_index]
        end
         element_index += 1
       end
       smallest_num_of_a << min
       row_index += 1
     end
     smallest_num_of_a
end