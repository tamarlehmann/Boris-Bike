class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" unless @bikes.count > 0
    return @bikes.pop
  end

  def dock_bike(bike)
    raise "No space available" unless @bikes.count < 20
    @bikes << bike
  end

end
