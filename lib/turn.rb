def display_board(board)
	board.each_slice(3).with_index(1) do |arr, i|
		puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
		puts "-----------" if i <= 2
	end
end

def valid_move?(board, position)
	position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, position)
	!board[position] || !!board[position].match(/\S/)
end

def move(board, position, token='X')
	board[position-1] = token
end

def turn(board)
	puts "Please enter 1-9:"
	input = gets.strip
	if valid_move?(board, input)
		move(board, input.to_i)
		display_board(board)
	else
		turn(board)
	end
end