class CLI 
  
  def start
    puts "Welcome to the Basketball Hall of Fame!!!"
    Scraper.new.scrape_page
  end 
  
  # def menu
  # Player.all.each.with_index(1) do |player,index|
  #   puts #{index}. "#{player.text}"
  # end
  #end

end