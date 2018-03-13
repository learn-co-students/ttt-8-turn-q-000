def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) != false
     move(board, position)
      display_board(board)
  else
     turn(board)
  end
end

def move(board, position, character="X")

  board[position.to_i.pred] = character

end

def display_board(board)
  puts " 1 | 2 | 3 ",
   "-----------",
" 4 | 5 | 6 ",
  "-----------",
" 7 | 8 | 9 "
  puts "          "

  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
   "-----------",
" #{board[3]} | #{board[4]} | #{board[5]} ",
  "-----------",
" #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if (1..9) === position.to_i && position_taken?(board, position) != true
    return true
  else
    return false
end
end

def position_taken?(board, position)
  if board[position.to_i.pred] == "X"
    return true
  elsif board[position.to_i.pred] == "O"
    return true
  elsif board[position.to_i.pred] == ""
    return false
  elsif board[position.to_i.pred] == " "
    return false
  else
    return false
  end
end
