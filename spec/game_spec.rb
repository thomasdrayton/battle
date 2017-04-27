require 'game' #cannot get attack (reduces ht) to work


describe Game do

  let(:game){described_class.new(player1,player2)}
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }


describe "#attack" do
  it 'reduces p2s hitpoints by 10' do
    allow(game.player_2).to receive(:hitpoints) { 100 }
    allow(game.player_2).to receive(:receive_damage)
    expect{ game.attack(game.player_2) }.to change { game.player_2.hitpoints }.by -10
  end
end

it 'shows whose turn it is' do
  expect(page).to have_content "turn"
end

end
