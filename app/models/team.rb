class Team < ApplicationRecord
    has_many :home_games, :class_name => "Game", :foreign_key => 'home_team_id'
    has_many :away_games, :class_name => "Game", :foreign_key => 'away_team_id'
    has_many :players
    
    def wins
        games = self.away_games + self.home_games

        games.collect.count do |x|
                x.winner == self.id 
            end
    end

    def losses 
        games = self.away_games + self.home_games

        games.collect.count do |x|
                x.loser == self.id 
            end
    end
    # has_many :wins, :class_name => "Game", :foreign_key => 'winner'
    # has_many :losses, :class_name => "Game", :foreign_key => 'loser'

end
