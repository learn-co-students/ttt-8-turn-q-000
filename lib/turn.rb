def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board,index) == true
    move(board,index,"X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  row_separator = "-----------"
  row1 = " " + board[0] + " " + "|" + " " + board[1] + " " + "|" + " " + board[2] + " "
  row2 = " " + board[3] + " " + "|" + " " + board[4] + " " + "|" + " " + board[5] + " "
  row3 = " " + board[6] + " " + "|" + " " + board[7] + " " + "|" + " " + board[8] + " "
  puts row1
  puts row_separator
  puts row2
  puts row_separator
  puts row3
end

def input_to_index(index)
  index = index.to_i - 1
  return index
end

def position_taken?(board,index)
  if index == "" || index == nil
    return false
  else
    if board[index] == " "
      return false
    elsif board[index] == "X" || board[index] == "O"
      return true
    else
      return false
    end
  end
end

def valid_move?(board,index)
  if index > 8 || index < 0
    return false
  else
    if position_taken?(board,index) == true
      return false
    elsif position_taken?(board,index) == false
      return true
    else
      return nil
    end
  end
end

def move(board,index,player_char = "X")
  board[index] = player_char
  return board
end
