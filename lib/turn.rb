def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  p = position.to_i - 1
  if position_taken?(board, p) == false && p.between?(0, 8)
      return true
    elsif position_taken?(board, p) == true
      return false

  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true

  end
end

def move(board, position, char)
  pos = position.to_i
  board[pos - 1] = char
  valid_move?(board, position)
  display_board(board)
end

def turn(board)
  inp = 0
  until inp.to_i <= 9 && inp.to_i >= 1
    puts "Please enter 1-9:"
    inp = gets.strip
  end
    move(board, inp, "X")

end
