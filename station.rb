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
    self.trains.each do |train|
      if train.type == type
        puts train
      end
    end
  end
end
