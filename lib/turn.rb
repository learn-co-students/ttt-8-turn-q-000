require_relative './functions'

def turn(board)

  while true
    puts "Please enter 1-9:"
    input=gets.strip
    if valid_move?(board, input)
      move(board, input)
      display_board(board)
      break
    end
  end

end