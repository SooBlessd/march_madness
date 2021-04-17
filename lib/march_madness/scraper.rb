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

   def scrape_bracket
    puts "its time to scrape"
    doc = Nokogiri::HTML(open("http://www.espn.com/mens-college-basketball/tournament/bracket"))
    # binding.pry
    # region_team_info = []
    # doc.css("div.region").map do |region|
    #     region.css("div.region dl b").map do |team|
    #         team_name = team.css("div.region dl a")[].text 
    #         region_team_info << {name: team_name}
    #     end
    #     region_team_info
        binding.pry
    end

      
    #I want to pick a region and then a team in that region. 
    #should iterate through the region and return all of the teams and ranking.
    #list = doc.search("div.region").text
    #region_info = doc.css("div.region")
    #region_name = doc.css("div.regtitle")
    #region_teams_and_href = doc.css("div.region dl a")
    #game_block = doc.css("div.region dl")[0]
    #team_name = doc.css("div.region dl a")[0].text
    #team_href = doc.css("div.region dl a")[0]['href']
    #team_name_and_ranking = doc.css("div.region dl b")[0].text
    #--> check to make sure there are no duplicates with .unique


#    end 

#    def scrape_team(team_url)
#     team_page = Nokogiri::HTML(open(team_url))

#    end




   


end
