class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
    @bike_count = 1
  end

  def release_bike
    raise "No bikes available" unless @bike_count > 0
    @bike_count -= 1
    Bike.new
  end

  def dock_bike
  end

end
