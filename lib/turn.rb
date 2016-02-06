def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board,position)
  position = position.to_i - 1
  if position.between?(0,8) == true
    if position_taken?(board, position) == true
      return false
    end
    return true
  end
end

def move(board, position, token="X")
  position = position.to_i - 1
  board[position] = token
end

def turn(board)
  puts "Please enter 1-9:"
  userEntry = gets.chomp
  if valid_move?(board,userEntry) == true
    move(board,userEntry)
    display_board(board)
  else
    puts "Entry not valid. Try again"
    turn(board)
  end
#   turn(board)
end
