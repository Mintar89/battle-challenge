require 'player'

describe Player do 
  subject(:hulk) {Player.new("Hulk")} 

  describe '#name' do
    it 'returns the name' do
      expect(hulk.name).to eq "Hulk" 
    end
  end
end