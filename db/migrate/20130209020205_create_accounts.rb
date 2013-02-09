class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :primary_user_id
      t.string :logo

      t.timestamps
    end

    add_column :users, :account_id, :integer
  end
end
