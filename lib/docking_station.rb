class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    Bike.new
  end

  def dock_bike
  end

end
