class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
    section = website.css("table.Table2__table__wrapper")
    #players = 
      
    #   new_player = Player.new(name)
    
       
      binding.pry
    #end
  end 
    
    


end

