require 'player'

describe Player do

let(:player_1_name) { 'Sulaiman' }
let(:player) { described_class.new(player_1_name)}

  describe '::new' do

    it 'has a name' do
      expect(player.name).to eq player_1_name
    end

  end
end
