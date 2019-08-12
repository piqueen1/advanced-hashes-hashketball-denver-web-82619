def game_hash
  teams = {}
  teams[:home] = {
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
