# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  #board1=Array.new(3) { Array.new(3, "   ") }
  for column in 0..2
      puts " #{board[(column*3)+0]} | #{board[(column*3)+1]} | #{board[(column*3)+2]} "
    if column <  2
      puts "-----------"
    end
  end

end