require 'pry'
class Scraper
  
  def scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
    
     website.css("tr.Table2__tr.Table2__tr--lg").each do |player|
      name = player.css("figure").attr("title").value
      new_player = Player.new(name)
      new_player.position = player.css(".Table2__td")[2].text
      new_player.age = player.css(".Table2__td")[3].text
      new_player.height = player.css(".Table2__td")[4].text
      new_player.weight = player.css(".Table2__td")[5].text
      new_player.college = player.css(".Table2__td")[6].text
      new_player.salary = player.css(".Table2__td")[7].text
     #binding.pry
    end
  end 
  
end


