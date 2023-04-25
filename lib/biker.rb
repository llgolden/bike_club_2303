class Biker
  attr_reader :name, :max_distance, :rides, :acceptable_terrain
            
  def initialize(name, max_distance)
    @name = name
    @max_distance = max_distance
    @rides = {}
    @acceptable_terrain = []
  end

  def learn_terrain!(terrain)
    @acceptable_terrain << terrain
  end

  def log_ride(ride, distance)
    if self.acceptable_terrain.include?(ride.terrain) && 
      self.max_distance >= ride.total_distance
      if @rides[ride] == nil
        @rides[ride] = [distance]
      else
        @rides[ride].push(distance)
      end
    end
  end

  def personal_record(ride)
    if @rides[ride] == nil
      false
    else 
      @rides[ride].min
    end
  end
end
