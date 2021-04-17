class MarchMadness::Team
    attr_accessor :scraper

    @@all =[]

    def initialize
        @scraper = scraper
       puts " I'm in team!" 
    end

    def self.all 
        @@all 
    end

end