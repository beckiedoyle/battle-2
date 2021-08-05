require 'player'

  describe Player do
    subject(:phineas) {Player.new("Phineas")}
    subject(:ferb) {Player.new("Ferb")}
 
    describe '#name' do
      it 'returns the name' do
        expect(phineas.name).to eq "Phineas"
      end
    end

    describe "#hit_points" do
      it "returns the hit points" do
        expect(phineas.hit_points).to eq Player::DEFAULT_HIT_POINTS
      end
    end

    describe "#attack" do
      it "damages the player" do
        
        expect(ferb).to receive(:receive_damage)
        phineas.attack(ferb)
      end
    end

    describe "#receive_damage" do
      it "reduce my score when attacked" do
        expect{phineas.receive_damage}.to change {phineas.hit_points}.by (-10)
      end
    end

  end