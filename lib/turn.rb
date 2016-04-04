def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  if pos.is_a?(String)
    if pos.length > 1
      return false
    end
  end
  if pos.to_i > board.length
    return false
  elsif board[pos.to_i - 1] == "" || board[pos.to_i - 1] == " " || board[pos.to_i - 1] == nil
    return true
  else
    return false
  end
end

def move(board, pos, xoro="X")
  if valid_move?(board, pos)
    board[pos.to_i - 1] = xoro
  else
    puts "Please enter a valid position"
    pos = gets.strip
    move(board, pos)
  end
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  move(board, pos)
  
end