def display_board(brd)
  for i in 0..brd.size-1
    if (i+1) % 3 == 0
      puts " #{brd[i]} "
      puts "-----------"
    else
      print " #{brd[i]} |"
    end

  end
end

def valid_move?(board, position)
  if(position >= 0 && position < 9 && !position_taken?(board,position))
    true
  else
    false
  end
end

def position_taken?(board, position)

  if(board[position] == "X" || board[position] == "O")
    true
  else
    false
  end

end

def input_to_index(inp)
  inp.to_i-1

end

def move(arr, index, player="X")
  arr[index] = player
  return arr
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,'X')
  else
    turn(board)
  end
  display_board(board)

end
