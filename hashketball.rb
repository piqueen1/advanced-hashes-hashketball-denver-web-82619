require "pry"

def game_hash
  teams = {}
  teams[:home] = {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [ 
      {"Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
        }
      },
      {"Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
        }
      },
      {"Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
        }
      },
      {"Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
        }
      },
      {"Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
        }
      }]
    }
  teams[:away] = {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {"Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
        }
      },
      {"Bismack Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
        }
      },
      {"DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
        }
      },
      {"Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
        }
      },
      {"Kemba Walker" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
        }
      }]
    }
    
  teams
end

def num_points_scored(name)
  points = 0
 
  game_hash.each do |team_name, team|
    player = team[:players].select { |player| player.has_key?(name) } 
    if !player.empty?
      points = player[0][name][:points]
    end
  end
  
  points
end

def shoe_size(name)
  size = 0
 
  game_hash.each do |team_name, team|
    player = team[:players].select { |player| player.has_key?(name) } 
    if !player.empty?
      size = player[0][name][:shoe]
    end
  end
  
  size
end

def team_colors(team_name)
  colors = []
 
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      colors = team[:colors]
    end
  end
  
  colors
end

def team_names
  team_names = []
  
  game_hash.each do |location, team| 
    team_names << team[:team_name]
  end
  
  team_names
end

def player_numbers(name)
  numbers = []
  
  game_hash.each do |location, team|
    if team[:team_name] == name
      team[:players].each do |player| 
        player.each do |player_name, stats|
          numbers << stats[:number]
        end
      end
    end
  end
  
  numbers
end

def player_stats(name)
  stats = {}

  game_hash.each do |team_name, team|
    player = team[:players].select { |player| player.has_key?(name) } 
    if !player.empty?
      stats = player[0][name]
    end
  end
  
  stats
end

def big_shoe_rebounds
  max_size = 0
  matching_rebounds = 0
 
  game_hash.each do |team_name, team|
    team[:players].each do |player|
      if player.values[0][:shoe] > max_size
        max_size = player.values[0][:shoe]
        matching_rebounds = player.values[0][:rebounds]
      end
    end
  end
  
  matching_rebounds
end

def most_points_scored
  max_points = 0
  name = ""
 
  game_hash.each do |team_name, team|
    team[:players].each do |player|
      if player.values[0][:points] > max_points
        max_points = player.values[0][:points]
        name = player.keys[0]
      end
    end
  end
  name
end

def winning_team
  home_points = 0
  away_points = 0
  winner = ""
  
  game_hash.each do |location, team|
   team_name = team[:team_name]
   team[:players].each do |player|
    if location = "home"
      home_points += player.values[0][:points]
    else
      away_points += player.values[0][:points]
    end
   end  
   
    winner = home_points > away_points ? game_hash[:home][:team_name] : game_hash[:away][:team_name]
    #binding.pry
  end
  
  winner
end

def player_with_longest_name
  longest_name = ""
  characters = 0
  
  game_hash.each do |location, team|
    team[:players].each do |player|
      #binding.pry
      
      if player.keys[0].length > characters
        longest_name = player.keys[0]
        characters = player.keys[0].length
      end
    end
  end
  
  longest_name
end

def long_name_steals_a_ton?
  most_steals = 0
  steals_of_longest = 0
  
  game_hash.each do |location, team|
    team[:players].each do |player|
      if player[player.keys[0]][:steals] > most_steals
        most_steals = player[player.keys[0]][:steals]
    end
  end
  
  game_hash.each do |team_name, team|
    team[:players].each do |player|
      if player[player.keys[0]][:name] == player_with_longest_name
        steals_of_longest = player[player.keys[0]][:steals]
      end
    end
  end
end
most_steals == steals_of_longest
end
