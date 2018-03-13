def turn(board)
  puts "Please enter 1-9:"
  #display_board(board)
  input = gets.strip
  #input = input.to_i
  #position = input.to_i - 1
  #puts input
  if valid_move?(board,input)
    board = move(board,input)
    #print board
    display_board(board)
  else turn(board)
  end
end


def display_board(results = [" "]*9)
  puts "  #{results[0]} | #{results[1]} | #{results[2]} "
  puts "------------"
  puts "  #{results[3]} | #{results[4]} | #{results[5]} "
  puts "------------"
  puts "  #{results[6]} | #{results[7]} | #{results[8]} "
end

def move(board, location, player = 'X')
  board[location.to_i-1] = player
  return board
end

def valid_move?(board,input)
  input = input.to_i
  if !input.between?(1,9)
    false
  elsif position_taken?(board,input)
    false
  else
    true
  end
end



def position_taken?(board,input)
  position =  input.to_i - 1
  if board[(position)] == " "
    false
  elsif board[(position)] == ""
    false
  elsif !board[(position)]
    false
  elsif board[(position)] == "X" || board[(position)] == "O"
    true
  else
  end
end