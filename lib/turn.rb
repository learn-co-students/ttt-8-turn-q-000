def turn(board)
  validated = false
  until validated == true
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    validated = valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, team = "X")
  board[index] = team
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move? (board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
