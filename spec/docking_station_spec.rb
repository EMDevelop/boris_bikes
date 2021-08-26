require 'docking_station'

describe DockingStation do


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


  end


end