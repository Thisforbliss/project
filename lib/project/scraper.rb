class Scraper
  
  def scrape_page
    html = open("https://www.onthisday.com/people/basketball-players")
    doc = Nokogiri::HTML(html)
    
    doc.css("ul.photo-list.photo-list--full-width li.photo-list__item").each do |player|
      name = player.css("a").children.text
      new_player = Player.new(name)
      new_player.url=  player.css("a").attr("href").value
    end
  end 
    
    
  def scrape_player(player)
    Player.(player.url)
  end
end

