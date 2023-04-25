require 'rspec'
require "./lib/ride"
require "./lib/biker"
require "./lib/bike_club"

RSpec.describe BikeClub do
  it "exists" do
    drinkers = BikeClub.new("Drinkers with a Biking Problem")
    expect(drinkers).to be_a(BikeClub)
  end 

  it "has attributes" do
    drinkers = BikeClub.new("Drinkers with a Biking Problem")
    expect(drinkers.name).to eq("Drinkers with a Biking Problem")
    expect(drinkers.bikers).to eq([])
  end
end #final

# expect().to eq()
# expect().to eq()
# expect().to eq()