class CLI 
  
  def start
    puts "Welcome to the Basketball Hall of Fame!!!"
    Scraper.new.scrape_page
    menu
   end
  
  def menu
    Player.all.each.with_index(1) do |player,index|
      puts "#{index}. #{player.name}"
    end
  end
  
  d



end