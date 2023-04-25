class Biker
  attr_reader :name, :max_distance, :rides, :acceptable_terrain
            
  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  
end #final
  

# Graded Items:

# 1. Create a Biker with attributes and a way to read that data
# 2. A Biker has a list of acceptable terrain and can learn new terrain
# 3. Bikers can log a ride with a time. The Biker can keep track of all of its previous rides and times for those rides.
# 4. A Biker will not log a ride if the ride's terrain does not match their acceptable terrain. They also won't log a ride if the ride's total distance is greater than the Biker's max distance.
# 5. A Biker can report its personal record for a specific ride. This is the lowest time recorded for a ride. This method will return false if the Biker hasn't completed the ride
