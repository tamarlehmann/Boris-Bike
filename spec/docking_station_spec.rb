require 'docking_station'

describe DockingStation do
  it 'confirms that Docking Station respond to method release_bike' do
    expect(subject).to respond_to('release_bike')
  end

  it 'release a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  # it 'check if bike working' do
  #   expect(subject.release_bike.working?).to eq true
  # end

  it { expect(subject).to respond_to('dock_bike')}

  it 'raise an error when no bikes available' do
    expect{subject.release_bike}.to raise_error("No bikes available")
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike).last).to eq bike
  end

  it 'raise an error when docking station has 20 bikes and is full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect{subject.dock_bike(Bike.new)}.to raise_error("No space available")
  end

end
