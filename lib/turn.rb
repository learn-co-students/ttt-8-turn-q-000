def display_board (arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def valid_move?(board, pos)
  posi = pos.to_i
  return 1 <= posi && 9 >= posi && !position_taken?(board, posi - 1)
end

def position_taken?(board, pos)
  return !["", " ", nil].include?(board[pos])
end

def move(board, pos, ox = "X")
  board[pos.to_i - 1] = ox
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  if(valid_move?(board, pos))
    move(board, pos)
    display_board(board)
  else
    turn(board)
  end
end