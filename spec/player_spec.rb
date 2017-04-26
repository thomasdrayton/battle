require 'player'

describe Player do

let(:player_1_name) { 'Sulaiman' }
let(:player1) { described_class.new(player_1_name)}

let(:player_2_name) { 'Tom' }
let(:player2) { described_class.new(player_2_name)}

  describe '::new' do

    it 'has a name' do
      expect(player1.name).to eq player_1_name
    end

    it 'has hp of 100' do
      expect(player1.hitpoints).to eq 100
    end
  end

  describe "#attack" do
    it 'reduces p2s hitpoints by 10' do
      expect{ player1.attack(player2) }.to change {player2.hitpoints}.by -10
    end
  end

end
