require './lib/bike.rb'

class DockingStation
  attr_accessor :bike

  def initialize 
    @bike = nil
  end

  def release_bike
    bike ? Bike.new : (raise "No Bikes in the dock mate")
  end

   def dock(bike)
    @bike = bike
   end
end
  # dockingstation.dock.bike.