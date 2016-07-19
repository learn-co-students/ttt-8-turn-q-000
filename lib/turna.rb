def input_to_index(input)
  if ["1","2","3","4","5","6","7","8","9"].include? input
    input2=input.to_i
    index=input2-1
    return index
  else
    -1
  end
end

  puts "What is your move?"
  input=gets.strip
  puts "you chose #{input}"
  index=input_to_index(input)
  puts "index is #{index}"
