class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.references :profile, index: true, null: false, foreign_key: true
      t.references :game, index: true, null: false, foreign_key: true

      t.string :hero_picked
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.string :side

      t.timestamps null: false
    end
  end
end
