require 'game'

describe Game do  
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }

  describe '#attack' do
    it 'reduce points of the player' do
      expect(player2).to receive(:reduce_points)
      game.attack(player2)
    end
  end

  describe '#initialize' do
    it 'creates 2 players' do
      expect(Game).to respond_to(:new).with(2).argument
    end
  end

  describe '#current_turn' do
    it 'start with player 1' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#swith_turn' do
    it "changes player's turn" do
      game.switch_turn
      expect(game.current_turn).to eq player2
    end
  end
end