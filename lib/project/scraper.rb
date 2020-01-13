require 'pry'
require 'nokogiri'
require 'open-uri'
class Scraper

  def self.scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
    players = website.css(".Table__TBODY tr")

    players.each do |player|
       name = player.css(".Table__TD")[1].text
       new_player = Player.new(name)
       new_player.position = player.css(".Table__TD")[2].text
       new_player.age = player.css(".Table__TD")[3].text
       new_player.height = player.css(".Table__TD")[4].text
       new_player.weight = player.css(".Table__TD")[5].text
       new_player.college = player.css(".Table__TD")[6].text
       new_player.salary = player.css(".Table__TD")[7].text
    end
  end
end
