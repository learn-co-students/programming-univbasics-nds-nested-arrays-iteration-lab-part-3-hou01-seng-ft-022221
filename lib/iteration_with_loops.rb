def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  big_string = ""
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][element_index].kind_of?(String)
        big_string = big_string + src[row_index][element_index].to_s + " "
      end
      element_index = element_index + 1
    end
    row_index = row_index + 1
  end
  big_string
end