def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  #binding.pry
    if position.to_i.between?(1, 9)
      postionvar = position.to_i - 1
        if position_taken?(board, postionvar) == false
          return true
        else position_taken?(board, postionvar) == true
          return nil
        end
    else
      return false
  end

end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else board[position] == "X" || board[position] == "O"
    return true
  end
end

def move(board, position, character = "X")
  #position.to_i
  #position -= 1
  board[position.to_i - 1] = character
  puts "#{board}"
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position)
      move(board, position, )
      display_board(board)
  else
    puts "Please enter 1-9:"
    position = gets
  end
  #turn(board)
end
