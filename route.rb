class Route
  attr_reader :stations

  def initialize(first_station, last_station)
    @stations = []
    @stations << first_station
    @stations << last_station
  end

  def add_station(station)
    @stations.insert(1, station)
  end

  def delete_station(station)
    @stations.delete(station)
  end
end
