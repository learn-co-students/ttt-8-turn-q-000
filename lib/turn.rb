def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board,position)
    display_board(board)
  else
    puts "Position already taken"
    turn(board)
  end
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
  return board
end


def valid_move?(board, position)
   if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i - 1)
      return true
    end
  end
end

def position_taken?(board, position)
  taken = nil

  if (board[position] == " " || board[position] == "" || board[position] == nil)
    taken = false
  else
    taken = true
  end
end