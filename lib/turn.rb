def valid_move?(board, position)
  pos = position.to_i
  if pos.between?(1, 9) && position_taken?(board, pos - 1) == false
    true
  else
    false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your move method here!
def move(board, location, character = "X")
  int_location = location.to_i - 1
  board[int_location] = character
end

def turn(board)
  done = false
  ctr = 0
  until done
    puts "Please enter 1-9:"
    move = gets.strip
    if valid_move?(board, move)
      ind = move.to_i
      if ctr % 2 == 0
        move(board, ind, "X")
      else
          move(board, ind, "O")
      end
      display_board(board)
      ctr += 1
      done = true
    end
  end #until
end # def
