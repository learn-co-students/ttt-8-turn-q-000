def display_board(board = [" "," "," "," "," "," "," "," "," "])
	 puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
	 puts "-----------"
	 puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
	 puts "-----------"
	 puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end

def valid_move?(board, position)
	position = position.to_i - 1
	!position_taken?(board, position) && position <= 8 && position >=0
end	
def position_taken?(board, position)
	board[position] == " " || board[position] == ""
	board[position] == "X" || board[position] == "O"
end
def move(board, position, value = "X")
	position = position.to_i
	board[position-1] = value
end
def turn(board) 
	puts "Please enter 1-9:"
	position = gets.strip
	if valid_move?(board, position)
		move(board, position, value = "X")
	else
		puts "Please enter 1-9:"
		position = gets.strip
	end
	display_board(board)

end
