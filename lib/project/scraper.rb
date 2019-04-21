class Scraper
  
  def scrape_page
    html = open("https://www.onthisday.com/people/basketball-players")
    doc = Nokogiri::HTML(html)
    doc.css("li.photo-list__item").each do |player|
     players = player.text.split(" ")
     first_name =  players[2]
     last_name = players[3]
     name = "#{players[2]} #{players[3]}"
     player = Player.new(name)
     
    binding.pry
    
    #Player.new(first_name, last_name)
    
    end
  end
  
end

