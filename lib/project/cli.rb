require 'pry'
#require relative "scraper"
class CLI
  
  attr_accessor :player, :continue
  
  def intialize
   @continue = true 
  end
  
  def call 
    start 
    while @continue 
    menu
    select_player
    menu if @continue && @player != nil
    end
    goodbye
  end
  
  def start
   puts "Welcome to the Golden State Roster 'The Home Of The Splash Brothers'"
  end
  
  def goodbye
    puts "See you next time for any players updates!"
  end
  
  def menu
    #Scraper.new.scrape_page
    Player.all.clear
    Scraper.scrape_page
    Player.all.each.with_index(1) do |player, index|
      puts "#{index}. #{player.name}"
    binding.pry
    end
  end
  
  def select_player
  input = ""
  puts "\n Choose any player you wish by the number or type 'exit' when finished."
  input = gets.chomp.strip
    if input == "exit"
      @continue = false
    elsif input.to_i.between?(1, Player.all.length)
      @player = Player.all[input.to_i - 1]
    else
      puts "Error, Choose any player you wish by the number or type 'exit' when finished.  "
    end
  end
  
end