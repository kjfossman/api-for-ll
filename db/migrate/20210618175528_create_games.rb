class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.datetime :date
      t.integer :home_team_score
      t.integer :away_team_score
      t.integer :home_team_id
      t.integer :away_team_id

      t.timestamps
    end
  end
end
