def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "Where would you like to move?"
  position = gets.strip
end

def valid_move?(board, position)
  if position.to_i > 9 || position.to_i < 1
    false
  elsif board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    false
  else
    true
  end
end