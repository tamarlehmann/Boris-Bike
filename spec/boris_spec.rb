require 'boris'

describe DockingStation do
  it { expect(DockingStation.respond_to?('release_bike')).to eq false }
end
