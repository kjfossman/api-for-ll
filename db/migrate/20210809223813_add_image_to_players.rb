class AddImageToPlayers < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :image, :string
  end
end
