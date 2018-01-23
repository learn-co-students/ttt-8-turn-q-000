
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
   !(board[index] == " " || board[index] == "" || board[index].nil?)
end

def valid_move?(board, index)
   !(position_taken?(board, index)) && (1..board.length).cover?(index + 1) 	
end


def input_to_index(num)
    num.to_i - 1
end

def move(board, index, character = "X")
	board[index] = character
	display_board(board)
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    user_input = input_to_index(input)

    if valid_move?(board, user_input)
    	move(board, user_input)
    else
    	turn(board)
    end

end

# get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end






