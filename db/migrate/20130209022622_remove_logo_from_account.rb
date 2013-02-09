class RemoveLogoFromAccount < ActiveRecord::Migration
  def change
    remove_column :accounts, :logo
    add_attachment :accounts, :logo
  end

end
