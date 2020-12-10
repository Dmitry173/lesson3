class Station
  attr_reader :name, :trains
  
  def initialize(name)
    @name = name
    @trains = []
  end

  def take_train(train)
    self.trains << train
  end

  def return_train(train)
    self.trains.delete(train)
  end

  def type_trains(type)
    puts self.trains.select { |train| train.type == type }
  end
end
