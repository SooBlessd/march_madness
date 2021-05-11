class MarchMadness::Team
    attr_accessor :scraper, :name, :rank, :url

    @@all =[]

    def initialize
        @name = name
        @rank = rank
        @url = url 
        # @scraper = scraper
       puts " I'm in team!" 
    end

    def self.all 
        @@all 
    end

end