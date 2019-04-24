class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/player/bio/_/id/3975/stephen-curry")
    website = Nokogiri::HTML(html)
    stats = website.css("div.Wrapper.Card__Content.first.children.text")
   
    stats.each do |curry|
      name = "Stephen Curry" 
      steph = Player.new(name)
      steph.team = curry.first.children[0].text
    
 
      
   
    
       
      binding.pry
    end
  end 
    
    


end

#section.first.children[0].text
