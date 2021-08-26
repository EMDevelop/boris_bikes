require 'bike'

describe Bike do

  context '.working?' do

    it 'Checks if the bike is responding to working' do
      expect(subject).to respond_to(:working?)
    end
    
  end

end