class Game < ApplicationRecord
    belongs_to :home_team, :class_name => "Team"
    belongs_to :away_team, :class_name => "Team"

    def winner 
        if home_team_score > away_team_score 
            home_team_id
        else
            away_team_id
        end
    end

    def loser
        if home_team_score > away_team_score 
            away_team_id
        else
            home_team_id
        end
    end

end
