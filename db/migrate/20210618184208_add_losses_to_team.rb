class AddLossesToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :losses, :integer
  end
end
