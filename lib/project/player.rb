class Player
  attr_accessor :name, :position, :age, :height, :weight, :salary, :college
  @@all= []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
end