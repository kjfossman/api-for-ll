class Team < ApplicationRecord
    has_many :home_games, :class_name => "Game", :foreign_key => 'home_team_id'
    has_many :away_games, :class_name => "Game", :foreign_key => 'away_team_id'
    has_many :players
    
    def wins
        
        games = self.away_games + self.home_games
        games = games.find_all { |g| g.date.year == Date.today.year}
        games.collect.count do |x|
            if x.winner
                x.winner[:name] == self.name
            end
            end
    end

    def losses 
        games = self.away_games + self.home_games
        games = games.find_all { |g| g.date.year == Date.today.year}
        games.collect.count do |x|
            if x.loser != 'N/A'
                x.loser[:name] == self.name
            end
            end
    end
    # has_many :wins, :class_name => "Game", :foreign_key => 'winner'
    # has_many :losses, :class_name => "Game", :foreign_key => 'loser'

end
