class Team < ApplicationRecord
    has_many :home_games, :class_name => "Game", :foreign_key => 'home_team_id'
    has_many :away_games, :class_name => "Game", :foreign_key => 'away_team_id'

    has_many :wins, :class_name => "Game", :foreign_key => 'winner'
    has_many :losses, :class_name => "Game", :foreign_key => 'loser'

end
