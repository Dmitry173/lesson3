class Train
  attr_reader :number
  attr_reader :type
  attr_reader :route
  attr_accessor :count
  attr_accessor :speed
  attr_accessor :station

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def speed_up(speed)
    self.speed += speed
  end

  def stop
    self.speed = 0
  end

  def add_wagon
    if self.speed == 0
      self.count += 1
    else
      puts "Необходимо остановиться"
    end
  end

  def delete_wagon
    if self.speed == 0
      self.count -= 1
    else
      puts "Необходимо остановиться"
    end
  end

  def route=(route)
    @route = route
    self.station = self.route.stations.first
  end

  def next_station
    self.route.stations[self.route.stations.index(self.station) + 1]
  end

  def prev_station
    self.route.stations[self.route.stations.index(self.station) - 1]
  end
