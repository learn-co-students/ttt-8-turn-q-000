def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i > 0 && position.to_i < 10
    if board[position.to_i - 1].include?('X') || board[position.to_i - 1].include?('O')
      return false
    else
      return true
    end
  else
    return false
  end
end

def move(board, position, token="X")
  board[position.to_i - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
  else
    puts "Invalid Move."
    turn(board)
  end
  display_board(board)
end