class AddIndexToStylesMediums < ActiveRecord::Migration
  def change
    add_index :styles, [:name, :account_id], unique: true
    add_index :mediums, [:name, :account_id], unique: true
  end
end
