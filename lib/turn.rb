def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  post = position.to_i-1
  board_ = board[post]
  valid = false

  if position == nil
    valid = false
  elsif post >= 0 && post <= 8
    if board_ = nil || board_ == " " || board_ == ""
      valid = true
    else
      valid = false
    end
  else
    valid = false

  end
  valid
end

def move(board, position, marker)
  post = position.to_i-1
  valid = valid_move?(board,position)
  if valid
    board[post] = marker
  end
  board

end

def turn(board)
    puts "Please enter 1-9:"
    position = gets.strip
    valid = valid_move?(board,position)
    if !valid
      turn(board)
    else
      move(board,position,"X")
      display_board(board)
      board
    end
end


