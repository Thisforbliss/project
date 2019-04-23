class CLI 
  
  def start
    puts "Welcome to the Basketball Hall of Fame where you could learn about your favorite basketaball players!!!"
    puts "Choose your player buy entering the number listed."
    Scraper.new.scrape_page
    menu
    number = gets.chomp!
   end
  
  def menu
    Player.all.each.with_index(1) do |player,index|
      puts "#{index}. #{player.name}"
    end
  end
  
  



end