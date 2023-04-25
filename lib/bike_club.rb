class BikeClub

  attr_reader :name, :bikers

  def initialize(name)
    @name = name
    @bikers = []
  end

  def add_biker(biker)
    @bikers << biker
  end

  # def most_rides

  # end

  # def best_time(ride)

  # end

  # def bikers_eligible(ride)

  # end

end #final


# | Method Name | Return Value |
# | ----------- | ------------ |
# | `name` | Club name as a `String` |
# | `bikers` | `Array` of `Biker` objects |
# | `add_biker(biker)` | `Array` of `Biker` objects |
# | `most_rides` | `Biker` object |
# | `best_time(ride)` | `Biker` object |
# | `bikers_eligible(ride)` | `Array` of `Biker` objects |
