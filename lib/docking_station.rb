require './lib/bike.rb'

class DockingStation
  attr_accessor :bikes

  def initialize 
    @bikes = []
  end

  def release_bike
    bikes ? Bike.new : (raise "No Bikes in the dock mate")
  end


  def dock(returned_bike)
    bikes.length == 20 ? (raise "Docking station full") : @bikes << returned_bike
  end
end