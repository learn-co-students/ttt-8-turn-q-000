position = gets.strip
  position = input_to_index(input)
    
    if valid_move?(board, index) == true 
      
      elsif index.between?(0,8)
        puts "Please enter 1-9:"



input = gets.strip
index = input_to_index(input)


  
#if not valid run #turn again
  if valid_move? == false
    turn(board)
#if valid, print new board
  else
    display_board(board)
  end

end