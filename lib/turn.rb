def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_occupied?(board, position)
  position = position.to_i
  if board[position-1] == " "
    return false
  elsif board[position-1] == ""
    return false
  elsif board[position-1] == nil
    return false
  elsif board[position-1] == "X" || board[position-1] == "O"
    return true
  end
end

def valid_move?(board, position)
  if position.to_i < 1 || position.to_i > 9
    return false
  else
    if position_occupied?(board, position)
      return false
    else
      return true
    end
  end
end

def move(board, position, char='X')
  if valid_move?(board, position) == true
    board[position.to_i-1] = char
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end



