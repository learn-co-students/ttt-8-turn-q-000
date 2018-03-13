#Code all your methods here
def turn(board)
  puts "Please enter 1-9:"
  char = gets.strip
  if valid_move?(board, char)
    move(board, char)
  else
    while valid_move?(board, char) == false
      puts "Please enter 1-9:"
      char = gets.strip
    end
  end

display_board(board)
end


def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

#Checks to see if the user input is compatible
def valid_move?(board, posit) 
  posit_int = posit.to_i
  posit_int = posit_int - 1
  if (board[posit_int] != "X" && board[posit_int] != "O") && (posit_int >= 0 && posit_int <= 9)
    true
  else
    false
  end
end



def move(board, posit, char = "X")
  posit = posit.to_i
  posit = posit - 1
  board[posit] = char
end


