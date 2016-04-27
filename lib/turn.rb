def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
    if valid_move?(board, position)
      move(board, position, value = "X")
      display_board(board)
    else
      until valid_move?(board, position) == true
        puts "Please input again:"
        position = gets.strip
      end
    end
end

def valid_move?(board, position)
    if !position.to_i.between?(1, 9)
      return false
    elsif position_taken?(board, position.to_i - 1)
      return false
    else
      return true
    end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == "nil"
    return false
  else board[position] == "X" || board[position] == "O"
    return true
  end
end

def move(board, position, value = "X")
  position = position.to_i
  board[position.to_i - 1] = value
end

def display_board(board = "   ")
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

