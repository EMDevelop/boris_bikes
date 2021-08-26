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

  context '#dock' do

    it "it doesn't allow a bike to be docked if there is already a bike" do
      subject.bikes = Bike.new
      expect {subject.dock(Bike.new)}.to raise_error
    end


  end



  context '#release_bike' do 

    let(:bike_example) { Bike.new}

    # before do 
    #   subject.bike = Bike.new
    # end

    it 'Bike is created when release_bike called and check bike working' do
      expect(bike_example.working?).to eq true
    end


    it 'returns docked bikes' do
      subject.dock(bike_example)
      expect(subject.bikes.length).to be > 0
    end

    it 'Raises an error when a bike is released when there are no bikes in dock' do
      subject.bikes = nil
      expect {subject.release_bike}.to raise_error
    end

  end


end