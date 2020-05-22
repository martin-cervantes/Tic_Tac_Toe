require './lib/board'

describe Board do 
  describe "#check_horizontal" do
  	let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
  	it "Check horizontal case 1 values." do
  		board = Board.new
  		expect(board.check_horizontal).to eql(false)
  	end 
  end

   describe "#check_horizontal" do
  	let(:square) { [%w[0], %w[0 O X O], %w[0 X O X], %w[0 O X O]] }
  	it "Check horizontal case 2 values." do
  		board = Board.new
  		expect(board.check_horizontal).to eql(false)
  	end 
  end

    describe "#check_vertical" do
  	let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
  	it "Check vertical values." do
  		board = Board.new
  		expect(board.check_vertical).to eql(false)
  	end 
  end

  describe "#check_diagonal1" do
  	let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
  	it "Check first diagonal values." do
  		board = Board.new
  		expect(board.check_diagonal1).to eql(false)
  	end 
  end

   describe "#check_diagonal2" do
  	let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
  	it "Check second diagonal values." do
  		board = Board.new
  		expect(board.check_diagonal2).to eql(false)
  	end 
  end

end