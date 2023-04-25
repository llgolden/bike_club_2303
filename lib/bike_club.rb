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

  def best_time(ride)
    @bikers.min_by { |biker| biker.personal_record(ride)}
  end
  
  # def bikers_eligible(ride)

  # end

# A `BikeClub` can tell us which Bikers are eligible for a given Ride. A Biker is eligible for a Ride if the terrain is acceptable to them and the total distance does not exceed their max distance.
# Return value: `Array` of `Biker` objects

end #final
