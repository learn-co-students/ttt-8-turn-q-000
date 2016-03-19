#Define Board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#Define Board_Display
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  #puts " #{board[0]} "'|'" #{board[1]} "'|'" #{board[2]} ""-----------"" #{board[3]} "'|'" #{board[4]} "'|'" #{board[5]} ""-----------"" #{board[6]} "'|'" #{board[7]} "'|'" #{board[8]} "
end

#Define your Move
def move(board, position, value = 'X')
position = position.to_i - 1
board[position] = value
end

#Define a valid move
def valid_move?(board, position)
position.to_i.between?(1,9) && position_taken?(board, position.to_i)
end

#Define a position taken method
def position_taken?(board, position)
if board[position-1] == " " || board[position-1] == ""
  return true
else
  return false
end
end

def turn(board)
  puts "Please enter 1-9:"
  def turn(board)
    position = gets.strip
    if valid_move?(board, position)
      puts move(board, position, value = 'X')
      puts display_board(board)
    else
      puts "Please enter 1-9:"
      position = gets.strip
      valid_move?(board, position)
      puts move(board, position, value = 'X')
      puts display_board(board)
    end
  end
end
