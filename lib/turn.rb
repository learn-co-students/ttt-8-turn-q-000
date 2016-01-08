def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, input, player="X")
  #subtract one as location on board is one less than location player sees
  board[input.to_i-1]=player
end

def valid_move?(board, input)
  input=input.to_i-1
  if position_taken?(board,input) == true || input >9 || input <0
    return false
  else
    return true
  end
end

def position_taken?(board, input)
  if board[input] == " " || board[input] ==  "" || board[input] ==  nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
    input = gets
    if valid_move?(board, input) == false
      turn(board)
    else
      move(board, input, player="X")
    end
      display_board(board)

end


