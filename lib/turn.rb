def display_board (board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (array,position)
  if position.to_i.between?(1,9)
    if !position_taken?(array, position.to_i-1)
      true 
    end
  end
end

def position_taken?(array,position)
   array[position] != " "
end

def move (board, position, value= "X")
  board[position.to_i - 1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
   if valid_move?(board,position)
    move(board,position,value="X")
      display_board(board)
  else 
    puts "Invalid input. Please enter 1-9:" 
    turn(board)
    display_board(board)
  end
end
