def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, character = "X")
  board[(location.to_i - 1)] = character
  if character = "X"
    character = "O"
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if (board[position] == "X") || (board[position] == "O")
    return true
  elsif (board[position] == " ") || (board[position] == "") || (board[position] == nil)
    return false
  end
end

def valid_move? (board, position)
  position = position.to_i
  if (position >= 1) && (position <= 9) && (position_taken?(board, position) == false)
    true
  else
    false
  end
end

def turn(board)
  loop do 
    puts "Please enter 1-9:"
    position = gets.strip
    if valid_move?(board, position)
      move(board, position)
      display_board(board)
      break  
    else 
      puts "Invalid position"
    end
  end
end