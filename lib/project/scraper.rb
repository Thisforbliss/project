class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/player/bio/_/id/3975/stephen-curry")
    website = Nokogiri::HTML(html)
    section = website.css("div.Wrapper.Card__Content")
    #players = 
      
    #   new_player = Player.new(name)
    
       
      binding.pry
    #end
  end 
    
    


end

section.first.text
=> "TeamGolden State WarriorsPosition Point GuardHT/WT6' 3\", 190 lbsDOB3/14/1988 (31)CollegeDavidsonDraft Info2009: Rd 1, Pk 7 (GS)StatusActiveExperience9th Season"