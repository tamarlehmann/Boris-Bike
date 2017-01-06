require 'docking_station'

describe DockingStation do
  it { expect(subject).to respond_to('release_bike') }

  it 'release a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  # it { expect(subject.release_bike.working?).to eq true }
  it { expect(subject).to respond_to('dock_bike')}
  it { expect(subject.bike).to eq @bike}
#   it { expect{raise "No bikes available"}.to raise_error("No bikes available") }

  it 'raise an error when no bikes available' do
    expect{subject.release_bike}.to raise_error("No bikes available")
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end


  # it 'raises an error' do
  #   expect{subject.release_bike(nil)}.to raise_error("No bikes available")
  # end

end
