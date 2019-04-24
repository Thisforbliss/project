class Player
  attr_accessor :name, :url, :team
  @@all= []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  
  
  
  def self.all
    @@all 
  end
  
  
end