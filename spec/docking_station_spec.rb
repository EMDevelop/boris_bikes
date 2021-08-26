require 'docking_station'

describe DockingStation do

# act attr_reader
  context '.release_bike' do
    it 'checks that release bike method exists' do
      expect(subject).to respond_to (:release_bike)
    end
  end

  context '#release_bike' do 

    let(:bike) { subject.release_bike }
    

    it 'Bike is created when release_bike called and check bike working' do
      expect(bike.working?).to eq true
    end

    it { is_expected.to respond_to(:dock).with(1).argument} 
    
    it { is_expected.to respond_to(:bike)}

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
    
  end
end