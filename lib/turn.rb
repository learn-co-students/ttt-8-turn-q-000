def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
	puts "Please enter 1-9:"
	input = gets.strip
	index = input_to_index(input)
	puts "board array index selected is #{index}."

	#check index for validation
	if index_in_range?(index)
		puts "index is in range"
	else
		puts "index is not in range"
	end

	#check if the position is taken
	if position_taken?(board, index)
		puts "position is taken"
	else
		puts "position is available"
	end

	if valid_move?(board, index)
		puts "move is valid"
		move(board, index)
		display_board(board)
	else
		puts "move is not valid"
		turn(board)
	end
end

def input_to_index(input)
	input.to_i - 1
end

def index_in_range?(index)
	index >= 0 && index <= 8
end

def position_taken?(board, index)
	if board[index] == " " || board[index] == "" || board[index] == nil
		false
	elsif board[index] == "X" || board[index] == "O"
		true
	end
end

def valid_move?(board, index)
	index_in_range?(index) && !position_taken?(board, index)
end

def move(board, index, token = "X")
	board[index] = token
end
