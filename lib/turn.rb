


def display_board(board = ["X", "X", "X", "X", "X", "X", "X", "X", "X"])

  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
  
end

def valid_move?(board, position)  

  if position.to_i.between?(1, 9) && !position_taken?(board, position.to_i-1)
    true
  end
end


def position_taken?(board, position)

  if board[position] == " " || board[position] == "" || board[position] == nil
    return(false)
  else
    return(true)
  end
end

def move(board, position, char = "X")

  spot = position.to_i
  spot = spot - 1  
  board[spot] = char
  return board

end

def turn(board)
  
  puts "Please enter 1-9:"
  position = gets

  while !valid_move?(board, position)
    puts "That's not exactly a valid play. Please try again"
    position = gets
  end

  move(board, position, char = "X")

  display_board(board)

end






