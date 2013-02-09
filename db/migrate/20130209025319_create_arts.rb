class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :title
      t.text :description
      t.integer :artist_id
      t.integer :account_id

      t.timestamps
    end

    add_attachment :arts, :image
  end
end
