class Scraper
  
  def scrape_page
    html = open("https://www.onthisday.com/people/basketball-players")
    doc = Nokogiri::HTML(html)
    doc.css("li.photo-list__item").each do |player|
    binding.pry
    
    
    Player.new(first_name, last_name)
    
    end
  end
  
end