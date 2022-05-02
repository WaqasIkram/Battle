require 'player'

describe Player do
  let(:player1) { Player.new('Superbon') }
  let(:player2) { Player.new('Grigorian') }
  
  it 'returns the player name' do
    expect(player1.name).to eq('Superbon')
  end

  describe '#hp' do
    it 'returns hit points' do
      expect(player2.hp).to eq described_class::HP
    end
  end

  describe '#reduce_points' do
    it "reduces player's 2 HP" do
    expect { player2.reduce_points }.to change { player2.hp }.from(100).to(90)
    end
  end
end