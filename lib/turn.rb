
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n
-----------\n
 #{board[3]} | #{board[4]} | #{board[5]} \n
-----------\n
 #{board[6]} | #{board[7]} | #{board[8]} "

end

def move(board, position, char="X")
  board[(position.to_i)-1] = char
end

def valid_move?(board, position, char="X")
  return !(board[(position.to_i)-1] == "X" || board[(position.to_i)-1] == "O") && position.to_i.between?(1,9)
end


def turn(board)
  try = true
  while (try)
    puts "Please enter 1-9:"
    position = gets.strip
    if valid_move?(board,position)
      try = false
    end
    move(board,position)
    display_board(board)
  end
end




