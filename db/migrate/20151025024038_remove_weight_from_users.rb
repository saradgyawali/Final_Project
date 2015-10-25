class RemoveWeightFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :weight, :integer
  end
end
