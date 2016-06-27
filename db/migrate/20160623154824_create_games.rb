class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :duration
      t.string :skill_bracket
      t.string :game_type
      
      t.timestamps null: false
    end
  end
end
