class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.text :subject
      t.text :content

      t.timestamps
    end
  end
end
