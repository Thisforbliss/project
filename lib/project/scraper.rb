require 'pry'
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

# #(Element:0xcc004c {
#           name = "span",
#           attributes = [
#             #(Attr:0xc9d9c0 { name = "style", value = "min-width:40px" }),
#             #(Attr:0xc9d9ac { name = "class", value = "" })],

# <page break> --- Press enter to continue ( q<enter> to break ) --- <page break>

#           children = [ #(Text "PF")]
