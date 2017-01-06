class DockingStation
  attr_reader :bike

  # def initialize
  #   @bike = Bike.new
  #   @bike_count = 1
  # end

  def release_bike
    raise "No bikes available" unless @bike
    return @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
