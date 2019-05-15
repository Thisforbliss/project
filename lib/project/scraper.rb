require 'pry'
class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
    stats = website.css("tr.Table2__tr")
    
    # name = "Stephen Curry"
    # steph = Player.new(name)
    # team = stats.first.children[0].text
    # position = stats.first.children[1].text
    # height_weight = stats.first.children[2].text
    # dob = stats.first.children[3].text
    # college = stats.first.children[3].text
     
      
    
 
      
   
    
       
      binding.pry
    #end
  end 
    
    


end

#section.first.children[0].text
