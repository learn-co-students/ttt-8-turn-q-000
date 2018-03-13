def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #position_taken? method here!
def position_taken?(board, position)
  position = position.to_i
  position -= 1
  if board[position] == ""
    false
  elsif board[position] == " "
    false
  elsif board[position] == nil
    false
  else
    true
  end
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  if position_taken?(board, position)
    false
  elsif position.between?(1, 9)
    if !position_taken?(board, position)
      true
    end
  else
    false
  end
end

def move(board, position, value="X")
  position = position.to_i
  position -= 1
  board[position] = value
  display_board(board)
end

number_of_moves = 0

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position)
  else
    puts "That is not a valid move;"
    turn(board)
  end
end
