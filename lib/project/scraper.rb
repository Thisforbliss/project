class Scraper
  
  def scrape_page
    html = open("https://www.onthisday.com/people/basketball-players")
    doc = Nokogiri::HTML(html)
    doc.css("ul.photo-list.photo-list--full-width li.photo-list__item").each do |player|
      name = player.css("a").children.text
      new_player = Player.new(name)
      new_player.url=  "https://www.onthisday.com"player.css("a").attr("href").value
      scrape_player(player)
      binding.pry
    end
  end 
    
    
  def self.scrape_player(player)
    html = open("https://www.onthisday.com"#{new_player.url})
    doc = Nokogiri::HTML(html)
    doc.css("wrapper").each do |player| 
    binding.pry
    end
  end
end

