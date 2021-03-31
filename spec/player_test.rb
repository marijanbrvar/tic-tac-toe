require_relative '../lib/players'

describe Player do
  it 'Create a new Player instance' do
    player = Player.new('Marko', 'X')
    expect(player.name).to eql('Marko')
    expect(player.symbol).to eql('X')
  end

  describe '#change_player' do
    let(:first_player) { Player.new('Marko', 'X') }
    let(:second_player) { Player.new('Marijan', 'O') }
    let(:current_player) { first_player }

    it 'switch player when current player is self' do
      changed = current_player.change_player(current_player, second_player)
      expect(changed).to eql(second_player)
    end

    it 'No change occure when current player is not self' do
      changed = current_player.change_player(second_player, current_player)
      expect(changed).to eql(current_player)
    end
  end
end


