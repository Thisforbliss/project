require 'nokogiri'
require 'open-uri'
class Project::Scraper

  def self.scrape_page
    html = open("http://www.espn.com/nba/team/roster/_/name/gs")
    website = Nokogiri::HTML(html)
    players = website.css(".Table__TBODY tr")

    players.each do |player|
       pp = player.css(".Table__TD")
       name = pp[1].text
       new_player = Project::Player.new(name)
       new_player.position = pp[2].text
       new_player.age = pp[3].text
       new_player.height = pp[4].text
       new_player.weight = pp[5].text
       new_player.college = pp[6].text
       new_player.salary = pp[7].text
     end
  end
end
