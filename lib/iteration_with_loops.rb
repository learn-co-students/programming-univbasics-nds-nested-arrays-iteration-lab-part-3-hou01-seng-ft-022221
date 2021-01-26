def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  
  extracted_strings = []
  row_index = 0 
  
  while row_index < src.length do 
    string_element = ""
    element_index = 0 
      while element_index < src[row_index].length do
        if src[row_index][element_index].is_a?(String)
          string_element << src[row_index][element_index] + ' '
        end
        element_index += 1 
      end
      extracted_strings << string_element
      row_index += 1 
    end
    extracted_strings.join("")
end