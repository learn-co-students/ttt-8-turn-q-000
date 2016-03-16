def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, location, char = "X")
  array[location.to_i - 1] = char
end

def valid_move?()
  
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.split
  if input >= 1 && input <= 9
    finput = input.to_i - 1
  else
    "Please enter a valid input"
  end
  
  return board[finput]
    
end