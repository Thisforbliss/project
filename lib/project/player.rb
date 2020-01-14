class Project::Player
  attr_accessor :name, :position, :age, :height, :weight, :salary, :college
    @@all= []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    Project::Scraper.scrape_page if @@all.empty?
    
    @@all
  end

end
