def display_board(board = " ")

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1, 9)
    if position_taken?(board, position)
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board, position)

  if board[position - 1] == " " || board[position - 1] == "" || board[position - 1] == nil
    return false
  elsif board[position - 1] == "X" || board[position - 1] == "O"
    return true
  end
end

def move(board, position, value = "X")
  position = position.to_i
  board[position - 1] = value
  display_board(board)
end

def turn(board)

  puts "Please enter 1-9:"
  position = gets.strip

  if valid_move?(board, position)
    move(board, position, "X")
  else
    until valid_move?(board, position)
      puts "Please enter 1-9:"
      position = gets.strip
    end
      move(board, position, "X")
  end
end









