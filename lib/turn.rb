def display_board(board)                          #display changes, updates board
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------\n #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
    end
                                                                               
    def input_to_index(index)  # String input is converted to integers
		index = index.to_i - 1
		return index
    end
    
            def move( board, index, character = "X" ) # make move
                      board[index] = character
            end
    
    def position_taken?(board, index) #check if move is taken by X's or O's ONLY
      
              if( board[index] == " " || board[index]  ==  "" || board[index] == nil)
                      return false

                   elsif ( board[index] == "X" || board[index] == "O" )
			return true
              end
    end # end of position taken?
      
	def valid_move?( board, index)
  
		if( position_taken?(board, index) == false && index.between?(0, 8) == true)#call position taken?/false==emtpy slot/index is also a valid 1-9 number
			return true
				else return false
		end
  end #end of valid_move?
     
def turn(board)
  puts "Please enter 1-9:"
input = input_to_index(input=gets.strip)

		if (valid_move?(board, input) == true ) #True means it's true, its a valid move.
			move(board, input)
			display_board(board)
		     else turn(board)
      end
 
end # end of turn method