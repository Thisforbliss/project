
require 'pry'
#require relative "scraper"
class CLI
  
  attr_accessor :player, :continue
  
  def intialize
   @continue = true 
  end
  
  def call 
    start 
    #skips over while loop
    #while @continue
    list_players
    menu
    show_player if @continue == true && @player != nil
  #end
    goodbye
  end
  
  def start
   puts "Welcome to the Golden State Roster 'The Home Of The Splash Brothers'"
  end
  
  def goodbye
    puts "See you next time for any players updates!"
  end
  
  def list_players
    Player.all.clear
    Scraper.scrape_page
    Player.all.each.with_index(1) do |player, index|
      puts "#{index}. #{player.name}"
    end
  end
  
  def menu
    input = ""
    while input != "exit"
    puts "Choose any player you wish by the 'number', type 'list' to reshow list or type 'exit' when finished."
    input = gets.strip.downcase
      if input.to_i > 0                      
        the_player = Player.all[input.to_i - 1]  
        
      puts "#{the_player.name} plays #{the_player.position} for the Golden State Warriors. He is #{the_player.age} years old and #{the_player.height} tall. He comes in weighing #{the_player.weight}. #{the_player.name} graduated from #{the_player.college} and makes honest living of #{the_player.salary} dollars per year."
        "Select another player by typing 'yes' or press 'exit' when you're ready to leave."
        
        
      elsif input == "exit"
        @continue = false
      # elsif input.to_i.between?(1, Player.all.length)
      #   @player = Player.all[input.to_i - 1]
      elsif input == "list"
      list_players
      else
        puts "Error, Choose any player you wish by the number or type 'exit' when finished."
        
      end
    end
  end  
  
  def show_player
    puts "#{@player.name} plays #{@player.position} for the Golden State Warriors. He is #{@player.age} years old and #{@player.height} tall. He comes in weighing #{@player.weight}. #{@player.name} graduated from #{@player.college} and makes honest living of #{@player.salary} dollars per year."
    puts "Select another player by typing 'yes' or press 'exit' when you're ready to leave."

    input = gets.strip
    if input == "yes"
      menu
    elsif input == "exit"
      @continue = false 
    else 
      puts "Error"
      menu
    end
  end
  
  
end