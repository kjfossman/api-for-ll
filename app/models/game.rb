class Game < ApplicationRecord
    belongs_to :home_team, :class_name => "Team"
    belongs_to :away_team, :class_name => "Team"

    def winner 
        if home_team_score > away_team_score 
            self.home_team.name
        else
            self.away_team.name
        end
    end

    def loser
        if home_team_score > away_team_score 
            self.away_team.name
        else
            self.home_team.name
        end
    end

end
