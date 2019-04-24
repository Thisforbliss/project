class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/player/bio/_/id/3975/stephen-curry")
    website = Nokogiri::HTML(html)
    stats = website.css("div.Wrapper.Card__Content")
    
    name = "Stephen Curry"
    steph = Player.new(name)
    team = stats.first.children[0].text
    position = stats.first.children[1].text
    height_weight = stats.first.children[2].text
    dob = stats.first.children[3].text
    college = stats.first.children[3].text
     
      
    
 
      
   
    
       
      binding.pry
    #end
  end 
    
    


end

#section.first.children[0].text
