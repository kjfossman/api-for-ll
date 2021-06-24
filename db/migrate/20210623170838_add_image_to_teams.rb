class AddImageToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :img, :string
  end
end
