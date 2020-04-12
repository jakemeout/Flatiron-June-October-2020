def join_nested_strings(src)
    row_index = 0
  while row_index < src.count do
        element_index = 0
        strings = ""
    while element_index < src[row_index].count do
         if src[row_index][element_index].class == String 
          strings += src[row_index][element_index]
    end
  row_index += 1
  end
  strings
end