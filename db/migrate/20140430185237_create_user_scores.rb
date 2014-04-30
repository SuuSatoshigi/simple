class CreateUserScores < ActiveRecord::Migration
  def change
    create_table :user_scores do |t|
      t.string :user_name
      t.integer :score
      t.string :user_id

      t.timestamps
    end
  end
end
