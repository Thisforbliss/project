require 'pry'
class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
     website.css("tr.Table2__tr.Table2__tr--lg").each do |player|
      full_name = player.css("figure").attr("title").value
      position = player.css(".Table2__td")[2].text
      age = player.css(".Table2__td")[3].text
      height = player.css(".Table2__td")[4].text
      weight = player.css(".Table2__td")[5].text
      college = player.css(".Table2__td")[6].text
      salary = player.css(".Table2__td")[7].text
     binding.pry
    end
  end 
end


