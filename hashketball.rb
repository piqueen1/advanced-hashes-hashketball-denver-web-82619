def game_hash
  teams = {}
  teams[:home] = {
    :team_name => "Brooklyn Nets",
    :colors => ["black", "white"],
    :players => [ "Alan Anderson" => {
      :number => "0",
      :shoe => "16",
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      "Reggie Evans" => {
      :number => "30",
      :shoe => "14",
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      "Brook Lopez" => {
      :number => "11",
      :shoe => "17",
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      "Mason Plumlee" => {
      :number => "",
      :shoe => "",
      :points => 0,
      :rebounds => 0,
      :assists => 0,
      :steals => 0,
      :blocks => 0,
      :slam_dunks => 0
      },
      "Jason Terry" => {
      :number => "31",
      :shoe => "15",
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }]
    }
  teams[:away] = {
    :team_name => "",
    :colors => [],
    :players => [{
      :number => "",
      :shoe => "",
      :points => 0,
      :rebounds => 0,
      :assists => 0,
      :steals => 0,
      :blocks => 0,
      :slam_dunks => 0
      }]
    }
    
  teams
end

def num_points_scored

end

