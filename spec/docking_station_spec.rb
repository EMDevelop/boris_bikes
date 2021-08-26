require 'docking_station'

describe DockingStation do

# act attr_reader
  context '.release_bike' do
    it 'checks that release bike method exists' do
      expect(subject).to respond_to (:release_bike)
    end
  end

  context '.dock' do 
    #Checks if 
    it 'checks that method dock exists on the docking station' do
      expect(subject).to respond_to(:dock).with(1).argument
    end
    # Does the same as the above
    # it { is_expected.to respond_to(:dock).with(1).argument} 
  
  end



  context '#release_bike' do 

    let(:bike) { subject.release_bike }
    before do 
      subject.bike = Bike.new
    end

    it 'Bike is created when release_bike called and check bike working' do
      expect(bike.working?).to eq true
    end


    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

  # Test that
  # When no bikes exist and release_bike is called
  # Exception is raised

    
  end

  context "thing" do
    
    it 'Raises an error when a bike is released when there are no bikes in dock' do
      # subject.dock(nil)
      expect {subject.release_bike}.to raise_error
    end

  end


end