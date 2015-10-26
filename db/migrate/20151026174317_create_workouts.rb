class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :activity
      t.integer :user_id
      t.string :video_url
      t.boolean :mon, default: false
      t.boolean :tue, default: false
      t.boolean :wed, default: false
      t.boolean :thu, default: false
      t.boolean :fri, default: false
      t.boolean :sat, default: false
      t.boolean :sun, default: false

      t.timestamps null: false
    end
  end
end
