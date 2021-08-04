require 'player'

  describe Player do
    subject(:phineas) {Player.new("Phineas")}
 
    describe '#name' do
      it 'returns the name' do
        expect(phineas.name).to eq "Phineas"
      end
    end

    describe "#hit_points" do
      it "returns the hit points" do
        expect(phineas.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

  end