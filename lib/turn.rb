def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position) 
  if position_taken?(board, position) == true && position.to_i.between?(1,9)
      return true
  else
      return false
  end
end

def position_taken?(board, position)
  input = position.to_i - 1
  if board[input] == " " || board[input] == "" || board[input] == nil
    return true
  else
    return false
  end
end

def move(board, position, token = "X")
  position = position.to_i - 1
  board[position] = token
end

def turn(board)
      puts "Please enter 1-9:"
      position = gets.chomp
      if valid_move?(board, position) == true
        move(board, position, token = "X")
        display_board(board)
      else
      puts "Please make a valid input"
      turn(board)
  end
end


