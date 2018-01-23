def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - (1)
  index = input
end

def move(board, index, player = "X")
  def update_board_at_with(board, index, player)
    board[index] = player
  end
  update_board_at_with(board, index, player)
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  end

  if index.between?(0, 8) == true
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    return move(board, index, player = "X") && display_board(board)
    else
      return turn(board)
  end
end
