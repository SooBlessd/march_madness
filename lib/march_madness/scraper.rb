require 'open-uri'
require 'nokogiri'
require 'pry'

class MarchMadness::Scraper
    attr_accessor :scrape_bracket

   def initialize
    puts "Im in scraper"
    scrape_bracket
    # teams = [name:"Ohio State"]
   
   end 

#    def get_teams
#     list = Nokogiri::HTML(open("https://www.espn.com/mens-college-basketball/bpi/_/view/tournament/page/1"))
#    end 

   def scrape_bracket
    doc = Nokogiri::HTML(open("http://www.espn.com/mens-college-basketball/tournament/bracket"))
    region_team_info = []
    doc.css("div.region").each do |region|
        region.css("b").map do |team|
            team_url = team.css("a").attr('href')
            team_name = team.css("a").attr('title')
            team_rank = team.text[0]
            region_team_info << {url: team_url, name: team_name, rank:team_rank}
        end
        region_team_info
    end
    binding.pry
   end
    # teams = []
    # doc.css("div.region dl#match1 dt").each do |team|
    #     team
    #     binding.pry
#     end
#    end


end
