

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
cell_separator = "|"
row_separator= "-----------"

# row 1

print " #{board[0]} "
print cell_separator
print " #{board[1]} "
print cell_separator
puts " #{board[2]} "
puts row_separator

# row 2
print " #{board[3]} "
print cell_separator
print " #{board[4]} "
print cell_separator
puts " #{board[5]} "
puts row_separator

# row 3
print " #{board[6]} "
print cell_separator
print " #{board[7]} "
print cell_separator
puts " #{board[8]} "


end



# code your #valid_move? method here
def valid_move?(board,index)
  if index >= 0 && index <= 8 && position_taken?(board,index) != true
    return true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)

if board[index] == "X" || "O" && board[index] != " " && board[index] !=  "" && board[index] != nil
  return true
elsif (board[index] == " "|| "" || "nil") && (board[index] != "X" || "O")
  return false

  end
end

def input_to_index(user_input)
  input = user_input.to_i
  index = input - 1
end

def move(board,index,character="X")

board[index.to_i] = character
display_board(board)

end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  move(board,index)

  until valid_move?(board,index) == true
    puts "Sorry, that's not a valid move. Please try again."
    input = gets.strip
    index = input_to_index(input)
   end

   move(board,index)
end
