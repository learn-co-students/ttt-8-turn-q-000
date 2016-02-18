def display_board(board)
	puts row_1 = " #{board[0]} | #{board[1]} | #{board[2]} "
		puts row_2 = " ----------- "
		puts row_3 = " #{board[3]} | #{board[4]} | #{board[5]} "
		puts row_4 = " ----------- "
		puts row_5 = " #{board[6]} | #{board[7]} | #{board[8]} "
	end

def turn(board)
	puts "Please enter 1-9:"
	position = gets.strip
	if valid_move?(board, position) == true
		move(board, position, token = "X")
		display_board(board)
		else
		turn(board)
	end
	#if the move is valid, enter a move, and display the board
	#if the move is not valid, prompt the user for another input
	end



def position_taken?(board, position)
	if board[position] == " " || board[position] =="" 
		false
	else
		true
	end
end

def valid_move?(board, position)
        if position_taken?(board, position.to_i-1) == false && position.to_i.between?(1,9)
            true
        else
            false
        end
    end

def move(board, position, token = "X")
	 board[position.to_i-1] = token
	end


