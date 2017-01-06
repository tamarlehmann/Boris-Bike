class DockingStation
  attr_reader :bike

  def release_bike
    raise "No bikes available" unless @bike
    return @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
