def display_board(board)
	puts " #{ board[0..2].join(" | ")} #{"\n"+"-"*11+"\n"} #{ board[3..5].join(" | ")} #{"\n"+"-"*11+"\n"} #{ board[6..8].join(" | ")} "
end

def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

def valid_move?(board, location)
	!(position_taken?(board, location.to_i - 1) || location.to_i.to_s != location)
end

def move(board, position, character)
	board[position.to_i - 1] = character
end

def turn(board)
	puts "Please enter 1-9:"
	choice = gets.strip
	if valid_move?(board, choice)
		move(board, choice, "X")
	else
		turn(board)
	end
	display_board(board)
end
