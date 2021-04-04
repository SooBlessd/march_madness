# require 'pry'
class MarchMadness::CLI 

  attr_accessor :name
  
  def initialize
    @name = MarchMadness::Team.new 
  end
   
  def call
    @name
    pick
    # record_sheet
    # math_stats
    puts "DID YOU DO It!?"
    goodbye
  end

  def pick
    puts "Welcome to this years March Madness Information Sheet:"
    #displays list of teams for each region
    # puts "Pick a Region: (E-East/W-West/M-Midwest/S-South)"
    pick_region
    # region = gets.strip
    #if user exits on region --> send to goodbye
    pick_team #(team) send it the team
    puts "YES"
    info?#(region)
  end

  def pick_region
    input = nil
    while input == nil || input != "exit"
      puts "Pick a Region: (E-East/W-West/M-Midwest/S-South) or type exit"
      input = gets.strip.downcase
      #this could be a case statement
      if input == "exit"
        puts "See you later."
      elsif input == "e"
        puts "You picked the East!"
        #display teams
        break
      elsif input == "w"
        puts "You picked the West!"
        #display teams
        break
      elsif input == "m"
        puts "You picked the Midwest!"
        #display teams
        break
      elsif input == "s"
        puts "You picked the South!"
        #display teams
        break
      else 
        puts "Not sure what region you would like, pick a region." 
        input = nil
      end
    end 
  end


  def pick_team
    @name 
    input = nil
    while input == nil || input != "exit"
      puts "Pick ranking number (1 - 16) or type exit"
      input = gets.strip
      if input == "exit"
        puts "See you later."
      elsif input.to_i.between?(1,16)
        puts "#{name}"
        break
      else 
        puts "Not sure what team you would like, pick a team." 
        input = nil
      end
    end 
  end

 
  def record_sheet
  #get team record sheet  
  team_record = %{
    "#{@name}"  Ranking #
    
    Post season - March Madness
    vs. BAY L 79 - 55
    
    Regular season 
    Vs. CONN  L 69 - 57 
    Vs. VILL L 87 - 53
  }
    puts team_record
  end

  def math_stats
    #gets all team's score 
    team_stats = %{
    Team Math Stats
    Baylor University 
      
    scores: [80,60,90,40,30,50,70,60]
      
    [30,40,50,60,60,70,80,90]
    Median - 60 points 
    Mode - 60 points
    Mean - 54 points per game 
      
    Game 
    Won - 7
    Lost - 1
    Total - 8
    % wins =⅞ - 88%
    }
    puts team_stats
  end

  def info?
    input = nil
    while input == nil || input != "exit"
      puts "R-Team Record Sheet  -or-  T-Team Math Stats"
      input = gets.strip
      if input == "exit"
        puts "See you later."
      elsif input.downcase == "t"
        math_stats
        break
      elsif input.downcase == "r"
        record_sheet
        break
      else 
        puts "Not sure, if you want you are looking for." 
        input = nil
      end
    end 
  end

  # def info?#(region)
  #   input = nil
  #   while input != "exit"
  #     # puts "Pick ranking number (1 - 16)"
  #     # input  
  #     # if input.to_i.between?(1,16)
  #     #   puts "Team Name"
  #       puts "R-Team Record Sheet  -or-  T-Team Math Stats"
  #       # input
  #       # if input.downcase == "r"
  #       #   record_sheet
  #       # if input.downcase == "t"
  #       #   team_stats
  #       # else
  #       #   record_sheet 
  #       #   team_stats
  #       # end
  #     # puts "Not sure what team you would like, pick a team or type exit." 
  #     # input
  #     # end 
  #     # binding.pry
  #   end
  #   info? until gets.strip == "exit"
  # end
   
  # end

def goodbye
  puts "See you soon!"
end

end