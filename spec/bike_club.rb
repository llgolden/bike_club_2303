require "rspec"
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

  it "can add new members" do
    drinkers = BikeClub.new("Drinkers with a Biking Problem")
    biker1 = Biker.new("Kenny", 30) 
    biker2 = Biker.new("Athena", 25)
    expect(drinkers.bikers).to eq([])
    drinkers.add_biker(biker1)
    drinkers.add_biker(biker2)
    expect(drinkers.bikers).to eq([biker1, biker2])
  end

  it "can tell us which Biker has logged the most rides" do
    drinkers = BikeClub.new("Drinkers with a Biking Problem")
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    biker1 = Biker.new("Kenny", 30) 
    biker2 = Biker.new("Athena", 25)
    drinkers.add_biker(biker1)
    drinkers.add_biker(biker2)
    biker1.learn_terrain!(:gravel)
    biker1.learn_terrain!(:hills)
    biker1.log_ride(ride1, 92.5)
    biker1.log_ride(ride1, 91.1)
    biker1.log_ride(ride2, 60.9)
    biker1.log_ride(ride2, 61.6)
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker2.log_ride(ride1, 93.1)
    biker2.log_ride(ride2, 50.9)

    expect(drinkers.most_rides).to eq(biker1)
  end

  it "can tell us which Biker has the best time for a given Ride" do
    drinkers = BikeClub.new("Drinkers with a Biking Problem")
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    biker1 = Biker.new("Kenny", 30) 
    biker2 = Biker.new("Athena", 25)
    drinkers.add_biker(biker1)
    drinkers.add_biker(biker2)
    biker1.learn_terrain!(:gravel)
    biker1.learn_terrain!(:hills)
    biker1.log_ride(ride1, 92.5)
    biker1.log_ride(ride1, 91.1)
    biker1.log_ride(ride2, 60.9)
    biker1.log_ride(ride2, 61.6)
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker2.log_ride(ride1, 93.1)
    biker2.log_ride(ride2, 50.9)

    expect(drinkers.best_time(ride1)).to eq(biker1)
    expect(drinkers.best_time(ride2)).to eq(biker2)
  end

  it "can tell us which Bikers are eligible for a given Ride" do
    drinkers = BikeClub.new("Drinkers with a Biking Problem")
    ride1 = Ride.new({name: "Walnut Creek Trail", distance: 10.7, loop: false, terrain: :hills})
    ride2 = Ride.new({name: "Town Lake", distance: 14.9, loop: true, terrain: :gravel})
    biker1 = Biker.new("Kenny", 30) 
    biker2 = Biker.new("Athena", 25)
    drinkers.add_biker(biker1)
    drinkers.add_biker(biker2)
    biker1.learn_terrain!(:gravel)
    biker1.learn_terrain!(:hills)
    biker1.log_ride(ride1, 92.5)
    biker1.log_ride(ride1, 91.1)
    biker1.log_ride(ride2, 60.9)
    biker1.log_ride(ride2, 61.6)
    biker2.learn_terrain!(:gravel)
    biker2.learn_terrain!(:hills)
    biker2.log_ride(ride1, 81.1)
    biker2.log_ride(ride2, 50.9)

    expect(drinkers.bikers_eligible(ride1)).to eq([biker1, biker2])
  end
end 
