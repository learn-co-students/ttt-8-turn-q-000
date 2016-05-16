require_relative "../lib/turn.rb"

describe './lib/turn.rb' do

  describe '#display_board' do
    it 'prints arbitrary arrangements of the board' do
      board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]

      output = capture_puts{ display_board(board) }

      expect(output).to include(" X | X | X ")
      expect(output).to include("-----------")
      expect(output).to include(" X | O | O ")
      expect(output).to include("-----------")
      expect(output).to include(" X | O | O ")


      board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

      output = capture_puts{ display_board(board) }

      expect(output).to include(" X | O | X ")
      expect(output).to include("-----------")
      expect(output).to include(" O | X | X ")
      expect(output).to include("-----------")
      expect(output).to include(" O | X | O ")
    end
  end

  describe '#valid_move?' do
    it 'returns true/false based on position' do
      board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]

      position = "1"
      expect(valid_move?(board, position)).to be_truthy

      position = "5"
      expect(valid_move?(board, position)).to be_falsey

      position = "invalid"
      expect(valid_move?(board, position)).to be_falsey
    end
  end

  describe '#move' do
    it 'allows "X" player in the bottom right and "O" in the top left ' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      move(board, 1, "O")
      move(board, 9, "X")

      expect(board).to eq(["O", " ", " ", " ", " ", " ", " ", " ", "X"])
    end
  end

  describe '#turn' do
    it 'asks the user for input by printing: "Please enter 1-9:"' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      allow($stdout).to receive(:puts)
      allow(self).to receive(:gets).and_return("1")

      expect($stdout).to receive(:puts).with("Please enter 1-9:")

      turn(board)
    end

    it 'gets the user input' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("1")

      turn(board)
    end

    it 'validates the input correctly' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("1")
      expect(self).to receive(:valid_move?).with(board, "1").and_return(true)

      turn(board)
    end

    it 'asks for input again after a failed validation' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("invalid")
      expect(self).to receive(:gets).and_return("1")

      turn(board)
    end

    it 'makes valid moves' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("1")

      turn(board)

      expect(board).to match_array(["X", " ", " ", " ", " ", " ", " ", " ", " "])
    end

    it 'displays a correct board after a valid turn' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow(self).to receive(:gets).and_return("5")

      output = capture_puts{ turn(board) }

      expect(output).to include("   |   |   ")
      expect(output).to include("-----------")
      expect(output).to include("   | X |   ")
      expect(output).to include("-----------")
      expect(output).to include("   |   |   ")
    end
  end
end
