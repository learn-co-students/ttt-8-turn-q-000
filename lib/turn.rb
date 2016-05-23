#displays the board array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#takes user inpkut as string char and converts to int, then subtracts 1
def input_to_index(user_input)
  return user_input.to_i-1
end

# all the positions are assumed to be ints 0-8 for folowing methods

# returns true if its a valid move, false otherwise
# def valid_move?(board, position)
#   if(position != nil && position.between?(0,8) && !position_taken?(board,position))
#     return true
#   else
#     return false
#   end
# end
def valid_move?(board, index)
  #if index != nil && index.between?(0,8)
  if index.between?(0,8)
    if !position_taken?(board, index)
      true
    end
  end
end

# return true if position is taken, false otherwise
# def position_taken?(board, position)
#   if (board[position] == "" || board[position] == " " || board[position]==nil)
#     return false
#   elsif (board[position] == "X" || board[position] == "O")
#     return true
#   end
# end
def position_taken?(board, index)
  board[index] != " "
end

#put the user char into the postion on the board
def move(board, position, pchar = "X")
  board[position] = pchar
end

# def turn(board)
#     puts("Please enter 1-9:")
#     position = gets.chomp
#     if position != nil
#       position = input_to_index(position)
#       if valid_move?(board, position)
#         move(board,position)
#         display_board(board)
#       else
#         turn(board)
#       end
#     end
# end
def turn(board)
  puts "Please enter 1-9:"
  # input = gets.strip
  # index = input_to_index(input)
  user_num=Integer(gets) rescue false
  if user_num
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      turn(board)
    end
  end
end
