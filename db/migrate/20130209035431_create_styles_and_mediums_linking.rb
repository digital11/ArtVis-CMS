class CreateStylesAndMediumsLinking < ActiveRecord::Migration
  def up
    create_table :arts_styles, :id=>false do |t|
      t.integer :style_id
      t.integer :art_id
    end
    create_table :arts_mediums, :id => false do |t|
      t.integer :medium_id
      t.integer :art_id
    end
  end

  def down
    drop_table :arts_mediums
    drop_table :arts_styles
  end
end
