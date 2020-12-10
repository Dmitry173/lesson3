class Train
  attr_reader :number, :type, :route
  attr_accessor :count, :speed, :station

  def initialize(number, type, count)
    @number = number
    @type = type
    @count = count
    @speed = 0
  end

  def speed_up(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def add_wagon
    if @speed == 0
       @count += 1
  end

  def delete_wagon
    if @speed == 0 && @count > 0
       @count -= 1
  end

 def route=(route)
    @route = route
    route.stations[].get_train(self)
    @current_station_index = 0
  end

  def previous_station
    @route.stations[@current_station_index - 1] if @current_station_index > 0
  end

  def current_station
    @route.stations[@current_station_index]
  end

  def next_station
    @route.stations[@current_station_index + 1]
  end

  def move_forward
    return unless next_station

    current_station.send_train(self)
    next_station.get_train(self)
    @current_station_index += 1
  end

  def move_backward
    return unless previous_station

    current_station.send_train(self)
    previous_station.get_train(self)
    @current_station_index -= 1
  end
end
