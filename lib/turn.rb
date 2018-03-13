def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
     move(board, input.to_i)
     display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, character="X")
    numeric_position = position.to_i - 1
    board[numeric_position] = character
end

def valid_move?(board, position)
    if position.to_i.between?(1,9)
        if !position_taken?(board, position.to_i-1)
            true
        end
    end
end

def position_taken?(board, position)
  numeric_position = position.to_i - 1
  if board[position] == ' ' || board[position] == '' || board[position] == nil
     false
  else
    true
  end
end