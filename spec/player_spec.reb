# frozen_string_literal: true

require './lib/player'

describe Player do
  describe '#initialize' do
    player1 = Player.new('Player 1', 'X')
    it 'Check initialize' do
      expect(Player.new('Player 1', 'X')).to eql(player1)
    end
  end
end
