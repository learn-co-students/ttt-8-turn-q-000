def display_board(board)                               #prints arbitrary arrangements of the boarn
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, location)                       #returns true/false based on location
  location.to_i.between?(1,9) && !position_taken?(board, location.to_i - 1)
end

def position_taken?(board, location)                    #validates if the location is already taken
  !(board[location] == " " || board[location] == "" || board[location] == nil)
end

def move(board, location, char="X")
  board[location.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"                                #asks the user for input
  location = gets.strip                                   #gets the user input
  while valid_move?(board, location) != true              #validates the input correctly
     puts "Please enter 1-9:"                             #askes for input again after a failed validation
     location = gets.strip
  end
  move(board, location, char="X")                         #makes valid move
  display_board(board)                                    #displays a correct board after a valid turn
end
