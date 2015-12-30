# Define display_board that accepts a board and prints
# out the current state.
def display_board(moves_array)
  puts " #{moves_array[0]} | #{moves_array[1]} | #{moves_array[2]} "
  puts "-----------"
  puts " #{moves_array[3]} | #{moves_array[4]} | #{moves_array[5]} "
  puts "-----------"
  puts " #{moves_array[6]} | #{moves_array[7]} | #{moves_array[8]} "
end