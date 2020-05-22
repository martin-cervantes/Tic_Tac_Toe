# frozen_string_literal: true

require './lib/board'

describe Board do
  describe '#check_horizontal' do
    let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
    it 'Check horizontal case 1 values.' do
      board = Board.new
      expect(board.check_horizontal).to eql(false)
    end
  end

  describe '#check_horizontal' do
    let(:square) { [%w[0], %w[0 O X O], %w[0 X O X], %w[0 O X O]] }
    it 'Check horizontal case 2 values.' do
      board = Board.new
      expect(board.check_horizontal).to eql(false)
    end
  end

  describe '#check_vertical' do
    let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
    it 'Check vertical case 1 values.' do
      board = Board.new
      expect(board.check_vertical).to eql(false)
    end
  end

  describe '#check_vertical' do
    let(:square) { [%w[0], %w[0 O X O], %w[0 X O X], %w[0 O X O]] }
    it 'Check vertical case 2 values.' do
      board = Board.new
      expect(board.check_vertical).to eql(false)
    end
  end

  describe '#check_diagonal1' do
    let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
    it 'Check first diagonal case 1 values.' do
      board = Board.new
      expect(board.check_diagonal1).to eql(false)
    end
  end

  describe '#check_diagonal1' do
    let(:square) { [%w[0], %w[0 O X 13], %w[0 X O 23], %w[0 31 X 33]] }
    it 'Check first diagonal case 2 values.' do
      board = Board.new
      expect(board.check_diagonal1).to eql(false)
    end
  end

  describe '#check_diagonal2' do
    let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
    it 'Check second diagonal case 1 values.' do
      board = Board.new
      expect(board.check_diagonal2).to eql(false)
    end
  end

  describe '#check_diagonal2' do
    let(:square) { [%w[0], %w[0 O X 13], %w[0 X O 23], %w[0 31 X 33]] }
    it 'Check second diagonal case 2 values.' do
      board = Board.new
      expect(board.check_diagonal2).to eql(false)
    end
  end

  describe '#check_draw' do
    it 'Check for draw game case 1' do
      board = Board.new
      expect(board.check_draw(5)).to eql(false)
    end
  end

  describe '#check_draw' do
    it 'Check for draw game case 2' do
      board = Board.new
      expect(board.check_draw(9)).to eql(true)
    end
  end

  describe '#check_valid_choice' do
    it 'Check valid choice case 1' do
      board = Board.new
      expect(board.valid_choice('11')).to eql(true)
    end
  end

  describe '#check_valid_choice' do
    it 'Check valid choice case 2' do
      board = Board.new
      expect(board.valid_choice('aa')).to eql(false)
    end
  end

  describe '#check_set_choice' do
    let(:square) { [%w[0], %w[0 11 12 13], %w[0 21 22 23], %w[0 31 32 33]] }
    it 'Check set choice case 1' do
      board = Board.new
      expect(board.set_choice('11', 'X')).to eql(true)
    end
  end

  describe '#check_set_choice' do
    let(:square) { [%w[0], %w[0 11 X 13], %w[0 X O 23], %w[0 31 X 33]] }
    it 'Check set choice case 2' do
      board = Board.new
      expect(board.set_choice('11', 'O')).to eql(true)
    end
  end
end
