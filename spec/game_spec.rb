require 'game'

describe Game do

  let(:game){described_class.new}
  let(:player) { double :player }


describe "#attack" do
  it 'reduces p2s hitpoints by 10' do
    allow(player).to receive(:hitpoints) { 100 }
    allow(player).to receive(:receive_damage)
    expect{ game.attack(player) }.to change { player.hitpoints }.by -10
  end
end

end
