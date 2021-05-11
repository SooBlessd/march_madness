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
    @doc = Nokogiri::HTML(open("http://www.espn.com/mens-college-basketball/tournament/bracket"))
   

    binding.pry
    
#puts @doc.css("div #bracket dt").text




   


end
