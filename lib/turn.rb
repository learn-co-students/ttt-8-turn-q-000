def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  position = gets.strip
    if valid_move?(board, position)
      move(board, position, value = "X")
      display_board(board)
    else
      puts "Invalid move!"
      puts "Please pick an open space on the board."
      turn(board)
    end
end

#define display_board
def display_board(board)
#build board structure of 3 rows, 3 cells per, with lines between. Put array item in each cell
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " ----------- "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " ----------- "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#define valid_move?
 def position_taken?(board, position) #this wasn't working when defined after valid move :(
    if board[position] == " " || board[position] == "" || board[position] == nil
      false
      else
      true
    end
  end

def valid_move?(board, position)
   if position.to_i.between?(1,9) && position_taken?(board, position.to_i-1) == false
    true
   else
    false
  end

end

#define move
def move(board, position, player = "X")
 board[position.to_i - 1] = player
  board
end

