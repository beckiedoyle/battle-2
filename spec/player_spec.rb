require 'player'

  describe Player do
    subject(:phineas) {Player.new("Phineas")}
 
    describe '#name' do
      it 'returns the name' do
        expect(phineas.name).to eq "Phineas"
      end
    end
  end