require 'pry'.
class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
     website.css("tr.Table2__tr.Table2__tr--lg").each do |player|
      full_name = player.css("figure").attr("title").value
     
     binding.pry
    end
  end 
end


