class AddLoserToGame < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :loser, :integer
  end
end
