require 'player'

describe Player do 
  subject(:hulk) { Player.new("Hulk") } 
  subject(:thor) { Player.new("Thor")}
  
  describe '#name' do
    it 'returns the name' do
      expect(hulk.name).to eq "Hulk" 
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(thor.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(thor).to receive(:receive_damage)
      hulk.attack(thor)
    end
  end
  
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { hulk.receive_damage }.to change { hulk.hit_points }.by(-10)
    end
  end



end
