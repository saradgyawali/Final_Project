class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :age
      t.string :sex
      t.integer :weight
      t.integer :height

      t.timestamps null: false
    end
  end
end
