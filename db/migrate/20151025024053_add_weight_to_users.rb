class AddWeightToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weight, :string
  end
end
