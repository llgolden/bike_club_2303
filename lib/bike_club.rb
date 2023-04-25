class BikeClub

  attr_reader :name, :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    @bikers << biker
  end

  def most_rides
    @bikers.max_by { |biker| biker.rides.values.flatten.size }
  end

# A `BikeClub` can tell us which Biker has logged the most rides.
# Return value: `Biker` object



  # def best_time(ride)

  # end
# A `BikeClub` can tell us which Biker has the best time for a given Ride.
# Return value: `Biker` object



  # def bikers_eligible(ride)

  # end

# A `BikeClub` can tell us which Bikers are eligible for a given Ride. A Biker is eligible for a Ride if the terrain is acceptable to them and the total distance does not exceed their max distance.
# Return value: `Array` of `Biker` objects

end #final
