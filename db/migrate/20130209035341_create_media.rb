class CreateMedia < ActiveRecord::Migration
  def change
    create_table :mediums do |t|
      t.string :name
      t.integer :account_id

      t.timestamps
    end

    add_index :mediums, :account_id
  end
end
