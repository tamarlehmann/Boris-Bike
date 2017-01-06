class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
    raise "No bikes available"
    else
    return @bikes.pop
    end
  end

  def dock_bike(bike)
    if full?
      raise "No space available"
    else
      @bikes << bike
    end
  end

private
  def empty?
    if @bikes.empty?
      return true
    else
      return false
    end
  end

  def full?
    if @bikes.count >= 20
      return true
    else
      return false
    end
  end

end
