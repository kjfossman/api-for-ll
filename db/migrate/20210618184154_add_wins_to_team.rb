class AddWinsToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :wins, :integer
  end
end
